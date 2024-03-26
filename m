Return-Path: <blinux-list+bncBCVPTHE7K4IKBJUNWADBUBHLO2OGC@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 345C588D24D
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 23:58:42 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-69655dbec66sf65389726d6.3
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 15:58:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711493921; cv=pass;
        d=google.com; s=arc-20160816;
        b=WIKQS5hFYlPL2SXT0sgLVDMzvpNakv2msegDhYjRR4ML4/J+vD7EzaCOxGjAvKF0+b
         VW4OBabPIQJCLemh3i6vSNUPq0+u6BdWFGEE4xpXwwxiMbPCxdxQrwtW/IMYODllQNBb
         xe+wrP0i0sMXqGm3dXTMdE+AingMQMAxDDPYu3LeWDtkK/zrTHrtikK7yJHsAQqwSbTu
         qUY2sHlosn6gRA6ir7VCOQ7OEk9TSY4m+zdjsQ4qxjaditZOlXM/ASLUIFwQEQSZvGCx
         neVuuZl1stmIeh4JscIdybleIAuA5li1lxdiyNrh1x9WfIewr9q5baribD0Q6U9m1Px6
         ShNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=wJsS6/Fi1AHVMtWXzt74px3iyj1JPr97PX+0Z22atxs=;
        fh=yn87fTawFxHVyq7UcCd3j7smiz3HsoNalWu7cZeeP54=;
        b=p5+MArUJ3BA3U4kWwrAzsPkRsskJST8/6Xa0vJW6FvN88TmR6JNoTVJNGWwU/QMBfQ
         /KVyXCujbrUnLkCUpCCdVIkITBfV06meVum9jfbh/Qcs7IXha20AUdB94MIcupW/Jmea
         EJ/elLR8Ec5AShg8EJeDp7H4ofNZU63YJeve/2DcPyPLE5L3OwRDPYgOjNXVqgoNFnJh
         la/WPfAQiWDBqScDvXBED7rPh2Y/xzboF+R+jSnjudAzLCk+EMALxBENAGLPMawNdoyo
         B+lNZYDfb9BUgWkbBp1oOUO6CNex9Yb6J85Qxu4WD1PJT5JmWLqXe0J4x3pAKQYbL3G8
         /uSw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711493921; x=1712098721;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wJsS6/Fi1AHVMtWXzt74px3iyj1JPr97PX+0Z22atxs=;
        b=i0nC7lmvpfSLz0k/fRN0tsJOFAaZKBYYEsiT23JVAdDLQ6os2KIc/sYACZe0WdjwgK
         zGal0C1asokUCPlUwF+JTqARZzzcZAUNQMHTESRC/KlxV5S4NlvkInBKHU526ZElHbtb
         xPBM3OqVgr5JFVDk5CY4OmwnNVikCgNrRSwYXSXVhVKSVtMfjKHCCud9QF+E49vaGzc8
         /WXpZneBgrDxNQ6WP9jgbW7TEyQOqtpTQBW8DgnUR85brxUFw8Vb8/vidy64GbJiaLTN
         rBEvWZTTj/J9cPbzIw/huMajv9a5b2AYBYL/E6412zsjGt09Tzit3yiiKPP7KiVETnbj
         RjCA==
X-Forwarded-Encrypted: i=2; AJvYcCUt4phFdW3gCoaeUutnHMU/jkHMMi1VEb6Odc26KXWAmbRTlvakvT2jG545kYes1UAZwQ9nkiSrjlhjnKlZpFIRuVHdsDtTU8Sx
X-Gm-Message-State: AOJu0Yyd/62Q81VGeC6hP5NmnhLcmzPBDPZ4NZG7VHdx8Kaa9acKu8qz
	V4WBekzk5Bs8Ak/dKkIZrstoVpxNJ7biuLB7e1hWjm5kTDpHbxSRNxILWMSaGVA=
X-Google-Smtp-Source: AGHT+IEU4RwPQrM/efKuBftNuO7DVNlmnV4G8KR36rNMgU6OFvRtklTFz297QnHNUIezjquaGF3jug==
X-Received: by 2002:a05:6214:21a1:b0:696:8e61:a98a with SMTP id t1-20020a05621421a100b006968e61a98amr1153781qvc.10.1711493920784;
        Tue, 26 Mar 2024 15:58:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2421:b0:68e:fab1:8005 with SMTP id
 gy1-20020a056214242100b0068efab18005ls1291855qvb.0.-pod-prod-05-us; Tue, 26
 Mar 2024 15:58:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWl2RIMcbeMezrzj+XkkY8Dsl/jtSV9tQILF9YvsuQ9ZataApE0JWdIf9Nnuj6oOKFeg3oUo96toKS0O9fwjTehSJZK6CcLGNXTtOgk
X-Received: by 2002:a05:6214:1d0f:b0:696:68a1:b55c with SMTP id e15-20020a0562141d0f00b0069668a1b55cmr1052175qvd.23.1711493920128;
        Tue, 26 Mar 2024 15:58:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711493920; cv=none;
        d=google.com; s=arc-20160816;
        b=wzR0qFO3flGWspODwofmrAi7ZexB07GqXtPEKJHjyfXQC7KBacZfZX+CxufS65yb5h
         qETs6hwzzcIsETzAEJjvZiNgKgMSaCDzfNVgWjBetHQFmSASuMhfHoqGWdSCm9lEpur6
         zfh4OAdnXQg2K3x7SoKdZFZlPwsZdIFq47L8m5SYB0GqiT55budMx9FXvgDuzmkDW/mA
         SM4KOyYnEOtIX5uMU1dF3SJed5kyXUnd8zhT2ykGUPfO8tUgbGsVHOUdzdbrEaft3eBR
         t8HZqsaov7iEBWLtKlpKjyDqmhGrpPrMmCiDSF8U4tuX4e8y3iWa/pfyBaki1QLVFDbi
         E9ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=wJsS6/Fi1AHVMtWXzt74px3iyj1JPr97PX+0Z22atxs=;
        fh=RYxCEWsAO6agnaLpj5IwU5Vlud7DVx2rj4v22zmVdeA=;
        b=mBlNUKRwIlcOI7eqzi+DrSMNCGeAJTaLCD8D+Xd/AMZQhHIrkQoTz0Y7FsaCIe1vDa
         ++i2VZSF4RrmYeYUSdwTPpaUSqw3VaiA8S6+l5uUwUMXX8bstEUDVHs4Jdrm+CDb8kEz
         B5G6i27eOr508/bJJil1yljQKk7XoVNh8es0n+OrDa7iYgAGPbXabC4NqayuYsdf8WiB
         h6W1b9DuPvKEoQ1+Jp8bVdYvZ55uUOhIiAldgVRv+9HAExodHSfXtOO6CFr1IkFP+qFe
         EKNeVY4jER2iF74ktwmZnadRvSA1hAG7FrrP0aAruQI7ZNw4f5OGHyxwimNVOq6Yp5YK
         /owg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id fv8-20020a056214240800b006914cd7a8b3si1494949qvb.379.2024.03.26.15.58.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 15:58:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-588-ZN8jfpVlPC6kHuy69NMVSQ-1; Tue, 26 Mar 2024 18:58:38 -0400
X-MC-Unique: ZN8jfpVlPC6kHuy69NMVSQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1FDB010189B8
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 22:58:38 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1C1C0492BD8; Tue, 26 Mar 2024 22:58:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D8209492BC8
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:58:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE8693C0E449
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:58:36 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-509-lUwuRLZ8O4-Lxll-Dkhv-w-1; Tue,
 26 Mar 2024 18:58:34 -0400
X-MC-Unique: lUwuRLZ8O4-Lxll-Dkhv-w-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id E1E6E40508;
	Tue, 26 Mar 2024 18:58:33 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id A7D711001AD; Tue, 26 Mar 2024 18:58:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id A769F10007F;
	Tue, 26 Mar 2024 18:58:33 -0400 (EDT)
Date: Tue, 26 Mar 2024 18:58:33 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: blinux-list@redhat.com
Subject: re: is there any command line reddit client
In-Reply-To: <ed0f5e28-637e-3934-3cf7-03d6333f76dc@panix.com>
Message-ID: <Pine.LNX.4.64.2403261856530.1398748@users.shellworld.net>
References: <ed0f5e28-637e-3934-3cf7-03d6333f76dc@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
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

...that is deeply unfortunate.
Especially given others shared the Reddit team knows about alternative 
paths to access.
Does explain why google searches produce such odd results for them 
however.



On Tue, 26 Mar 2024, Jude DaShiell wrote:

> tuir certainly isn't it.  I tested it and it crashes on run.
> All those packages should be removed from the pipi repository and git
> pages taken down.
> Only way anyone can get to reddit is use of iphone or android phone or
> tablet.
> An app may work with windows but I haven't used windows since 2013 and am
> not about to start now.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

