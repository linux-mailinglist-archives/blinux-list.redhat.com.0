Return-Path: <blinux-list+bncBCVPTHE7K4IPPOUAV4DBUBEDVSPXU@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 1793B86C077
	for <lists+blinux-list@lfdr.de>; Thu, 29 Feb 2024 07:00:25 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-42e520c4283sf8973021cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 28 Feb 2024 22:00:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709186424; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZZLoOoB0i6VOeJV4yPWeduXCTdjVrfLb/bKsuODgt+tP1vSLaMsnzCU+1BXY7lcjC3
         vaa9ppBaL3YUdaKD300mGY1jgF4thCUnBpTTB+ZnM6DNlZstu+y4HZ7A7oODpCn8u8M4
         H33YZgzll2LYk2/uqfRIeixTjEfW3sgsM10iTJWHw8joENybIzKYRE2qH7WrHeK9cqN5
         PzgYFd94YmMRdMAoRbdn6t2WxmJ5mcdVctPuVTTM1FV+UfMUIcqAc7vhBlPQ7a7PdZnK
         xkRyixm2dSuP7yh4V6CqBLCztNl8wWoTTyf1UgnpgM8FNSsSE/kldMyyJHEAeHbgovAb
         JTZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=b6zVa4wc00/9QYOvKlqOqWp1F3Lci0bXnS2FffSRyJo=;
        fh=Px3cJYXCsjUR74mO7NRz4H4tp+dZ6AKNR9P+wxdeIdo=;
        b=Di3HhBLcL3FmwwOYQhu21TAAXGoKiNcpcmxkxBut21rKL/1A6XYJTUkvdN6rEe8pyA
         wh7nOsSvqAQR5I/EOHG43Tl0u1VKGTNxxGQJk9s/ichTAIg2IxSc3rCQJr+le25QYFzq
         tE9FZmfdsenP6P4meGEuWGTU7HN4RnG0oZJFaLA+9cRIi/bwZIsxZzeq7Zy90ISxz/HO
         I8ujmLVhuvOoQq51PGce+VH3Grhu/OztWU5xhbupdpEhu84yN1mcPOlPKb99/qnXp5eF
         KA6byj6lQOlzVkUahFy1FLiJOg5AwWXlq8wn6SGIyWy484mjf9yVVQ6s5rhWywOp0roB
         AM6Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709186424; x=1709791224;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b6zVa4wc00/9QYOvKlqOqWp1F3Lci0bXnS2FffSRyJo=;
        b=i+jC+tvcxTmCKZ96s6OzdnNz02Cy0HwPC+7/YaNxQTIR8aKsdiIUS9+1WA3f2V9tE1
         xDBNVp+o8hETQJcdmdnoygvN43qYSKV1bMMPWnWmu9B2atTZNLCoxQ/KibM5+oIxvVkH
         d7nCIIiSPuoRvbBEiMfT6hGt/FlnYcaqr2/EOq/BYTNlSIosOHlrUCLTXZsNhd4yiZ5T
         YS2LxsJnnXhUjywgnA9pUHS4A85ThA9EkVgrOi5O5gIosEKCOYrpRnBJR1TNCxvtDIoH
         kjwAT5HH+iBqZEHry2qylmmsS1hmp/l2UyYFxNkglbIuzH0yClgxnP0IVVaPKC+jxXvt
         95Fg==
X-Forwarded-Encrypted: i=2; AJvYcCVaRyh+rtx1i9UQxUFLkiowUH0tvFas2g/T9RI9AyipSW+i48Vw/tSWQ/gLreh7IIYEo2peYM0kE7wrADNbnuGTHw0T1z4nKUJy
X-Gm-Message-State: AOJu0Yz6o/0EumK6Czw+40LcJm0f0TG4xJW8NExiGRfHWtEh+fHPZ+ed
	8es1QUFI4IeRiHo/Q8MmWh5Vwv+kBjraacXB8q8YOt7THwBy0KIqdf49w2igOds=
X-Google-Smtp-Source: AGHT+IELGiD2qPceH+RcfxbhAv285FaVdClWnUX7OdAfu7FVd+VM0zDK9zAV4CP9VpwT2OgDhAb2Jg==
X-Received: by 2002:a05:622a:194:b0:42e:6783:a491 with SMTP id s20-20020a05622a019400b0042e6783a491mr1178114qtw.20.1709186423817;
        Wed, 28 Feb 2024 22:00:23 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1b1b:b0:42e:78da:5735 with SMTP id
 bb27-20020a05622a1b1b00b0042e78da5735ls1073579qtb.1.-pod-prod-00-us; Wed, 28
 Feb 2024 22:00:22 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUu5a7ORT1bCwnpER5qb6cDaUdWjGWZAw01U+dwgfEGy8u6U7oSTgKHyjuCJ2Yu86K8omq5CEMlqm7M/wYx4wlr2JTTQMXgDIdHCcGl
X-Received: by 2002:ac8:6d1:0:b0:42e:bb8c:6344 with SMTP id j17-20020ac806d1000000b0042ebb8c6344mr707190qth.9.1709186422406;
        Wed, 28 Feb 2024 22:00:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709186422; cv=none;
        d=google.com; s=arc-20160816;
        b=zROvko7wvJ97V+Q1Fp2g4jM3Jm8MtrK1Ra3JfG7OXZKljYeNwJe34AhIfmrh9s0Mt8
         OFAqXM7YnDDoGVebI9iBDkwHVMasn+ZLDXxR5AmlW03uRBB0l1FceB7RU2wOT0RSinsH
         yc2Or03AHMb8N2Gm903mUi3Az4XmjbUnjRxMoZXX1EmqAuf+Rg6G6i1GIkS/S+lTfkeL
         uyao7YWhobYcCKAvoVgJaoNOC3MYVJWcvkTF2/KG52ZpowwvYaswi2SZa5CenZPMJ25N
         cVXjQcZSYcQHdXA3EyhU8DqN6PUlLgKSWtHZ2PgFGoWrLUinQEhPVOXEIjTQMTNpxrUQ
         zbhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=b6zVa4wc00/9QYOvKlqOqWp1F3Lci0bXnS2FffSRyJo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=YuiDqIcqQVqkZPBgNDEqfPnoc2sQ0Cmd0i5PpLzqSoMB0DSmnmIo/QFsLXnlifDdc8
         netZveOCP0VPKuXEXBjaeX7Otq43el8LAC9+uCRxa5nOD92zQ9URZOgsfctOCFyD5iGT
         uL6tuO5C/LviXi4JOCrixl1bEh/lCMMaGovB+5cYeSJRtS/S0Jp5l9wbKluUnopjOIuG
         i+WIowkAX0VqSfrRdb7kNdbzpDhiLu2aOBNeG890Ic8q6L3Td4Yfk6Q6RHb/WMAxardu
         t53VzE5xCT7kTCY4DuariUvPoQTAoCeZWMbCo9nP1g7YTTlHSrZNBLHkjicDAeKWhrwo
         DefQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id q20-20020ac87354000000b0042eb163e7dcsi710075qtp.237.2024.02.28.22.00.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 22:00:21 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-67-fEIdYQ2CP2WUYAtw26XIvg-1; Thu,
 29 Feb 2024 01:00:19 -0500
X-MC-Unique: fEIdYQ2CP2WUYAtw26XIvg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89E923C0DD36
	for <blinux-list@gapps.redhat.com>; Thu, 29 Feb 2024 06:00:19 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 86A00200A382; Thu, 29 Feb 2024 06:00:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 515A1201154D
	for <blinux-list@redhat.com>; Thu, 29 Feb 2024 06:00:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00FF93813F2B
	for <blinux-list@redhat.com>; Thu, 29 Feb 2024 06:00:19 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-81-ig7gyWScNPuVsSndOqzjRQ-1; Thu,
 29 Feb 2024 01:00:16 -0500
X-MC-Unique: ig7gyWScNPuVsSndOqzjRQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id E3A8144FCA
	for <blinux-list@redhat.com>; Thu, 29 Feb 2024 01:00:15 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id B30A4100BE6; Thu, 29 Feb 2024 01:00:15 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id B1A1A10005C
	for <blinux-list@redhat.com>; Thu, 29 Feb 2024 01:00:15 -0500 (EST)
Date: Thu, 29 Feb 2024 01:00:15 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: solutions for 450 errors?
Message-ID: <Pine.LNX.4.64.2402290054500.954081@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hi folks,
This one is frankly new, and I have been using computers for a long time.
When I post to freelist lists i am on, and some private ones, i am getting 
a mail delivery error stating that the  mail generates a 450 error, with 
extra numbers.  the error stated says that the service, freelist for 
example, cannot find my hostname.
searching seems to suggest this means  the ip address does not match 
shellworld.net,  or the reverse.
Any ideas on what this actually means, and what I can do?
Thanks,
Karen


