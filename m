Return-Path: <blinux-list+bncBDYPVTOXSQEBB3N56OVAMGQE5XPXHZI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id B108C7F3427
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 17:46:38 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-677e7daa85fsf42957316d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 08:46:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700585197; cv=pass;
        d=google.com; s=arc-20160816;
        b=SzSaoSw95d87ptNgZHDQKxkyvswP7z/I/IgoCCe+P6wYIzoMwVR/hGv/U0iue6XOAI
         KpjTjiXy2A85M5q0MaIlGmhv0fQyLJt5ZjEgGxbCeq99jH3zp/fSLtLGc20HbGsQhesO
         qBccaPji4s+37sZSLjhP3WKd6l/DMAaRgzWbKmzIyq6/HFkh7koQsVNh58osZtX0WGgv
         gVcyly1aLLVmiDWY8vMb68DD2o3gwg4CsRwd0gT0A2Mkac3GPP8+u9d2atYVGdNL24PU
         E/0x7w3nN40FctDNe4mFzQk16dJxILHVywU+5bmZlJO5A5Xo0IG4/uEzySAqWzG3XMie
         sDRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=DujYvIBjkhXjrRv1MJcCr5GtCLSprUzfh0/9Tddh3YY=;
        fh=GGMicPffpeqTvxIhsPCizLxvwEUE/a2K7NAErL8QmD4=;
        b=a+iHvpx8tnm9f8BdZlp2x2YrETM8Xtqk+9uXH6a2kwlew5ELTVbChWaEL1QL0n+nrQ
         JGl/UCp/KXmF8CJhkeMXTJrPqKTXfyV8jK16qgJi8iDpaH2rR3DnGmyyf8xXyDu5kx+W
         kYOp20y5WVWYePQqf0krTSWXgvGSPvJdmo2pQjSFhJdItHTcutbd4SsZrsCs4S7Kfn+A
         t8RsVaRB4m4e4rXxNAvDfKCQPmSTZmpl6JlfzogZy3UX15j3famgTtvUS4zX6tbVBfH+
         6HYwgfi7yYREmtfF6z3RW0KXbk0JAd08XDSlJXuyI5XAYCpcisUV5egFVPxzH0VOzW+7
         ufhg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700585197; x=1701189997;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DujYvIBjkhXjrRv1MJcCr5GtCLSprUzfh0/9Tddh3YY=;
        b=Ve9DoIVmwZytvDft0mKssSu9Zzg0qK5eePaKbJK7+vJxlZO8J1dFvfSa4k69oE7RHP
         cdpCW18IMlktqlk4IJ+Di0honPnqHl3oNgYemoBdSgBgdmJUDWO8YJryx3vcsIMO6sgW
         45IWTJvWiXxxJLsT3K0lHaTtdkuFE4iTrlX0OwMXHs+no+s3iS3sgOMt7a8qvqP6clbs
         zFzcmHT6CVRVEwFkSBKmeLN+Y2FS/gvguSoV7TiSOahYNL/ptZELsmR2WqZfqbNuUZEH
         m7V6rCFuw1r5/cX74IdYp7hgHxnHL3hbimgd2lWH/4OAmZiNOTqQOV+7ekZTOnFjgkOo
         mnog==
X-Gm-Message-State: AOJu0YyMmJSiYYogwTY4xIdAantaXGz3zZ8AMKYrUfykGfzErgwYSRTT
	rLIXNlq62A4iRujIcaIAQ4g5SA==
X-Google-Smtp-Source: AGHT+IHIqW4U11ysnRomli9JIjfpDVOMMU4RTD7OIPdITei7bozT7mEdMGErVBXIb3B/kvhxs8qTSQ==
X-Received: by 2002:a05:6214:124c:b0:670:710f:2042 with SMTP id r12-20020a056214124c00b00670710f2042mr7332574qvv.15.1700585197637;
        Tue, 21 Nov 2023 08:46:37 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4f13:0:b0:658:93db:e755 with SMTP id fb19-20020ad44f13000000b0065893dbe755ls2764848qvb.0.-pod-prod-01-us;
 Tue, 21 Nov 2023 08:46:36 -0800 (PST)
X-Received: by 2002:a0c:9c4b:0:b0:66f:b89e:71de with SMTP id w11-20020a0c9c4b000000b0066fb89e71demr10409419qve.36.1700585196742;
        Tue, 21 Nov 2023 08:46:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700585196; cv=none;
        d=google.com; s=arc-20160816;
        b=ELgrT4Rcyvgb77YQyKNpagpP2zjlcsDSBqy/FQjQIdjhewp7zG4OPbk2szpHm/UCXK
         /PPt3ZUNN2Y2Mz9rP55DByKdTHahdSYw1c9Hf+KKqUThxRO93Kw2M56i/lTcP8FTaHsR
         oq9kcOhuuAOotlyvD/xJvozT1pE+tA8AkSPMS8/pf+KsAyIxknaa1C/N10IOB7hdiLNx
         /oU1JkWCozHUfDSJJ/s5R/BsFhOOSH0mdiybtmTNdQkJghfFu2ZWlsbwAJRyf39lVqFv
         w8NtGcRiy62U/efWhQTusQhRJFu7ITbciIIZ6MxnXR6Um5ZNR+f8z3PAKgqyCs3j8uAv
         EdXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=VgQoikmrG95tK0v1KU1rTNY9faHXuugYjZjOIWPjMOc=;
        fh=GGMicPffpeqTvxIhsPCizLxvwEUE/a2K7NAErL8QmD4=;
        b=bOTxfL//3YKFwDVsn7AFSUc03jJ2ZjGMFLJgOv0QDNCcveYMUMJP/DAaCHFTKt7Rpw
         n5Vd4lR8FbDXuSk42oco+J5aMRNOuCTqEXt30RnXx7TBa7jv5lJwrr7MKtlLrIG598BS
         pRor9WqEbD8i7FhY63G0KPzfqBqoh17TjB8rkdv4qQBtW89lgtvBVIXAzx8PVe1ZYFPf
         wLn3dkZh1g0nzJ6OHbCqes2+g9r7+5L2BHghLjsCjGqL8JMTrl8tscYDd2IxHkGAty+I
         B+9cmH3iZbTSqljpKvCF+htRjjSP04hk0ppuXAaRpioyJotqfxSlYZAzhzUOvdXLO/P4
         leJg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id de16-20020a05620a371000b00767d5b81886si373060qkb.458.2023.11.21.08.46.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 08:46:36 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-121-5YgIzaDdNoWaajxAVQAzHg-1; Tue, 21 Nov 2023 11:46:35 -0500
X-MC-Unique: 5YgIzaDdNoWaajxAVQAzHg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 465B4811E91
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 16:46:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 434042026D66; Tue, 21 Nov 2023 16:46:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C68B2026D4C
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 16:46:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D7D5185A788
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 16:46:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-68-lwaU0brbN5WWRzGPYih1KA-1; Tue,
 21 Nov 2023 11:46:33 -0500
X-MC-Unique: lwaU0brbN5WWRzGPYih1KA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SZVdP1Qgxz10bL;
	Tue, 21 Nov 2023 11:46:33 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SZVdP12cpzcbc; Tue, 21 Nov 2023 11:46:33 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SZVdP0xPZzcbP;
	Tue, 21 Nov 2023 11:46:33 -0500 (EST)
Date: Tue, 21 Nov 2023 11:46:33 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, 
    Chime Hart <chime@hubert-humphrey.com>
cc: Harley Richardson <destructatron2018@gmail.com>, blinux-list@redhat.com
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <Pine.LNX.4.64.2311211101130.3574401@users.shellworld.net>
Message-ID: <981c24e6-d364-83de-17f0-c6ca7c588623@panix.com>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net> <20231121000352.GW23130@nntp.AegisInfoSys.com> <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net> <20231121024247.GX23130@nntp.AegisInfoSys.com> <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com> <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net> <a37d8eaa-1824-42d5-8a32-75bf17a906f8@gmail.com> <Pine.LNX.4.64.2311211022030.3574401@users.shellworld.net> <e4c20f48-32f9-751a-34a1-3426e6e01d2d@hubert-humphrey.com>
 <Pine.LNX.4.64.2311211101130.3574401@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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

People with the money haven't put it out for a browser like that and won't
put the money out for a browser like that.  That's why it hasn't and won't
happen.  Putting a browser together like that would need a development
team and not only for the interface there's security considerations
requirements and patching that will have to happen into the future for any
such project.  That needs dollars or some other currency to attract and
pay development team and give them enough money that this new project
remains their only project for long enough to get the project to first
release.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Tue, 21 Nov 2023, Karen Lewellen wrote:

> Chime,
> And that is something I do not personally understand.
> freedos and djppp, both editions of DOS still under development are not kept
> there by individuals using adaptive technology.
> Instead, they are there because many people want choice.
> Elinks when compiled with the options, provides a blending of the graphical
> and the text. paypal is treating it as my default device for one of my
> accounts, no more captcha.
> Links can create the best of both worlds as well.
> So why is there not a port of Thunderbird or another email tool that blends
> the best too?
> Creates enough of a progressive enhancement factor i. e. basic html, then
> builds upon that for interfacing? That helps mobile users who are not all able
> to get apple or are unhappy with android items.
> Kare
>
>
>
> On Tue, 21 Nov 2023, Chime Hart wrote:
>
> > Well Karen-and-All, I think there are no non-graphical ThunderBird
> > applications, so I wouldn't think that would be an option for those of us in
> > a straight commandline shell.
> > Chime
> >
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

