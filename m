Return-Path: <blinux-list+bncBDYPVTOXSQEBBY4IRSZQMGQEUCYDZHI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD5C900447
	for <lists+blinux-list@lfdr.de>; Fri,  7 Jun 2024 15:00:22 +0200 (CEST)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3d2066d49c3sf2383396b6e.0
        for <lists+blinux-list@lfdr.de>; Fri, 07 Jun 2024 06:00:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717765221; cv=pass;
        d=google.com; s=arc-20160816;
        b=NahS/hICUVgbTwyxHyaHvXUKYMDl1uFoYojmfz2u7+s2qaBKLfLXMWBIdDE65PeGKd
         CN3/2lpkwMAkCg4KjDvkrZxdESZ9Mu8dZmacqglbZsKxoo90hCLVUfcvBgGnzddillpG
         VmH2LDqy79IeR6Axf43nHz4PUUk+DSCaJUPQd5p6lYE4MKHmZ8Lu9BrThRUACSyhEgbb
         oCluPFpgqjqiPDf+YWSN9XXDZndv1q9sJOYrIK1KCYR3pOqD3vZ6WdqSOZ2FOiRMCuXK
         LBp5dWAAhvpu+HFsK/p8ykdMvTPIUC3xfXwU9fos9bqQRxVpx64Sqq9xx2W0uO+7uCBk
         Rvew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=jsinmE1+1HpuWKBnLqX8GIS3UsK/WywjvmJArE5bZgI=;
        fh=/zXckuwe1VShVoP0C7lDLvvDn21PwUCp5rhZ6zpmjw0=;
        b=gQGKAoYET3L6/0WcjQDrIEm1KZGO9AOFXfdsqO87xTt1Y0RuBbG/1PPEdVJXjVXfwF
         Ovi4H9mxNgwziqHVwOJj3c8+CfWsJccWqy9aJ4FxnPiNZ/ZjHhjRIxFrPPD0PBsG988L
         vS41RrmPYXfC5vmhcAvciDGziD8mKKeW+uGcL0dvkaCZEQXk9qYr319jcPzMhQFyR4bU
         oZGW6j6MP3l6GsLK5Hz1qZnNIDuryyRO44Pn99ilu4QyGdL7ldu5SLpD01FiGxD4DE0d
         +e4VceyeunthJ1069HcfPc//GBhGJZYlbWGJwUq6jtE3t+Kg7vPSX0hWJLH1uWcEraY2
         2dJQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717765221; x=1718370021;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jsinmE1+1HpuWKBnLqX8GIS3UsK/WywjvmJArE5bZgI=;
        b=UyhkqhWGlNDRlpWrAb1Chjg5aUgrkasdg+JxRrzKroZR33xN0ePKgC6wgSHDxV2bYj
         +2CpRy+r7ibNs5aEJMncgTbs61M1i9oMX6Aexz6EhUiBCE6XD+Co26YpNtWx8JH0vbgP
         ouvKEIlBTNnUrnWBkIm/TAHPQKErYZMSXI2hVusLm2wt3APX5TkROS/l3WLkPBQLj/bA
         5/eMKiiKSVmdxZj30U3Lx5pBS3RXbBsmjqPUwTIrxEaNz7DvKffMyhbhtWAtAkdLSMqO
         9t/yVPciW15emvIrrlpsT3SXK4veS62kywjbIU9390+K+TsgN2VL3jal6mPE8ufmLwKP
         oRYw==
X-Forwarded-Encrypted: i=2; AJvYcCWP3e46T5p/RHxubZhYctIxDdCj3Jy86q1njmWf/ne1nJekDQWnbFypB56nX9ROBDEYpYg/tmGramrjQk9adgVOCEP1+NPFpiIl
X-Gm-Message-State: AOJu0YxBlJLnoh8y8NZLV0VOiU+DtSG1ybVlCgUFH2FSS5QPIOy5WvhJ
	mgAN0zj7CzUVnGNxg3YH5La0YPhXw7l821H4locHCz6n/qXYXkK6UsivfK44Bvk=
X-Google-Smtp-Source: AGHT+IG3H+p5gRT3XG6oQJXb8PWmYm9NLGj9F6o7Fya7W6qYSoc0OiPvE7YNk/fgdQFmvOa5pGdkMQ==
X-Received: by 2002:a05:6808:2986:b0:3d1:d38f:f434 with SMTP id 5614622812f47-3d210f37a63mr2048600b6e.52.1717765219694;
        Fri, 07 Jun 2024 06:00:19 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:daa:b0:6ad:793e:9e5b with SMTP id
 6a1803df08f44-6b05728a651ls19185486d6.0.-pod-prod-07-us; Fri, 07 Jun 2024
 06:00:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUNBLE/W7SSdOvB0EvLkokBPNSBcqNU/vi0a9hIKCPLfwFvqGXyH6WH6M09q2oH8cNPXsYBGWI66cKW8O0aX2dm+9kjPVqd+vdf86TC
X-Received: by 2002:a67:fb1a:0:b0:48a:325a:e284 with SMTP id ada2fe7eead31-48c2761deabmr2146949137.6.1717765217393;
        Fri, 07 Jun 2024 06:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717765217; cv=none;
        d=google.com; s=arc-20160816;
        b=KR8k1ELnPh8OJ715QQSwJ/hhTnE1aoyAHIMQ42XOhTlg2L9wLCUUTb2F873FukuiRN
         NoQB/+I7HOukCwhi14uYZOdpUsPuLA9j9qTYThwssfDcxf78K5tfluy5NrKgWoY9Ahfz
         x1vZ84RmiRN1VYLy2yzEdcP08ilLHGgqVSlZfaE5+Hpvc+T/nbN3vdKhVlBCqVzVnZs+
         z8GJf+YV9d1us9yK1F+FmsxiWsE7dd0wgUVc/ip+IOxzUhxoJlkLD4pmOUNocUMJ1CtL
         H1Qs3vZ4DVbeIm2eE1Ewqlb1p8aaL4dA3fOCLjnRuOyGv57u4UK8U6tcbmGIXdfvdqoA
         W0iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=ZSFA28P0ky22Kt+fPyT4DaJ9GUK1pQML3yjAWgsXKeM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=y+oMJJbLbzYDbmdF2bfsJDW6dCAWUMT/F9DCO7uRpI3858Mu77WUx7HgRXHW53CJZI
         ZYqIAK3qnE/HbU7QZR4Fsl3rkkM6EzXxqiy1BisG1jKG4qhPQaFZN6l0tyFr6xf4IOp9
         YFr5s8ZF8HzxG8WkUzaN3z73DRCQdrQ1UqvsapU0Hz73aWEPIbOPnM6IGmMuzJ0E6Nbh
         VH2CW3v+DcEcwQKMlI+27n0fE0O0psKSZUp0mD5+vVLpaJxBAGvVy7vtBgrNuCdqcWJQ
         I0EaGwCHk2Dkft4Dp9pYOo6AhgUmPes2KX6Uv9l9FFhfcYoCiJdhiXx9IQwolXRQFXNZ
         pRPQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id ada2fe7eead31-48c1a2145e8si620127137.422.2024.06.07.06.00.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 06:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-463-f4cnLnFCMUmjUh8936yyVg-1; Fri,
 07 Jun 2024 09:00:15 -0400
X-MC-Unique: f4cnLnFCMUmjUh8936yyVg-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 029EE1955DCE
	for <blinux-list@gapps.redhat.com>; Fri,  7 Jun 2024 13:00:15 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E8C5619560AA; Fri,  7 Jun 2024 13:00:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E5B9819560AD
	for <blinux-list@redhat.com>; Fri,  7 Jun 2024 13:00:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 62A2719560A0
	for <blinux-list@redhat.com>; Fri,  7 Jun 2024 13:00:14 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-580-pTc9CdgBO6S2NwnK0vTJbw-1; Fri,
 07 Jun 2024 09:00:10 -0400
X-MC-Unique: pTc9CdgBO6S2NwnK0vTJbw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VwhBJ2FnNzqRN
	for <blinux-list@redhat.com>; Fri,  7 Jun 2024 09:00:08 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VwhBJ29dczcbc; Fri,  7 Jun 2024 09:00:08 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VwhBJ29B7zcbV
	for <blinux-list@redhat.com>; Fri,  7 Jun 2024 09:00:08 -0400 (EDT)
Date: Fri, 7 Jun 2024 09:00:08 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: browsepages outdated
Message-ID: <93c3b393-4d29-9785-12b5-3d62ca462a47@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

The app is incompatible with ruby 3.10 things done with gems are
deprecated and those with earlier versions of ruby probably will be able
to compile the gem and use it but if you have ruby 3.10 on your machine
your best doing gem uninstall browsepages and allow all dependencies to be
uninstalled as well.
debian bookworm has tealdeer which will install tldr on machines and that
may give users a better experience with man pages.  debian trixie hasn't
got tealdeer available though yet but probably will have it by the time
trixie is released as the debian stable version notwithstanding show
stopper bugs.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

