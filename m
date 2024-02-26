Return-Path: <blinux-list+bncBDYPVTOXSQEBB7HG6OXAMGQEPYLG64Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id B903C8681E4
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 21:24:29 +0100 (CET)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6de2dd25786sf3689744a34.3
        for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 12:24:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708979068; cv=pass;
        d=google.com; s=arc-20160816;
        b=mgLsTYtewVx3LHP0Adhc8tTrrEdN3dScZkOxfEwXvnIgDEJcvfv5leDDja6jnIU/eI
         ZOPDWbCBLsWdV09uvMhL2kGf6M/5urIH4JY9uGtTEdKSqMsEdhv5mfBEyPWVSLLY+g9X
         G63Clhd8sHWZk+covyq2G8JLORnoM7dwrE3vLf4UuU/My652oS2bbkUhXmtdIEUaCyjq
         +ePBz6zqDjIFOp2i+7X2eJ9dD96vpJHVnscMhIkccEXxFchSsvWfb64fT71BeKXfz/r0
         E9dMJ89TLAuF8km2tU2J/EajdwYvuwrK/+sl6aJt2o75I18SKy+V64iattoGz4tunhJ9
         nD5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=SocajGL5I+CL8EhmpMTVb24ohcB+auLXdy04x0565c8=;
        fh=BHiuVrUY5EIiOnHQXJBz4hFAQoGhepwYWeCRSgeYjKg=;
        b=XaT6UpBZY4KBZjnK6oiRmf2u0ChowDBkYr1/bHhT3FWqFKm7uBj2lLJGB3y6KFWAfo
         KGOxpX6wTaL/u09n85dY9tIb1I3pw+rg4t/At43KDSqo6QRgulbKNooIWsVwzh2RTGVr
         OitM5SAEEAmLXasK3jHvTC2J99fAfUdUFUQvtQM+peoIBTiJPA7tosA42pkYBnkGc0Xv
         0xVXa7Ufjar6wk9kZOQoEt5ARKHsezC0lOHw65LftaxpKpiW99gtKxUxfe8VRZ9lTFZ7
         KNgrffjurj0e2D6OrHPdLTwXH6TGVkgK7nBpN+ehLAFvUhAGU/PSWLeOKU15D0/tAaXK
         tUCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708979068; x=1709583868;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SocajGL5I+CL8EhmpMTVb24ohcB+auLXdy04x0565c8=;
        b=ZHEgnpQZSM/nduYhp7JRa6vMA7v7XQoq9wWetOKkKgWR8gK2fqNazYFuiXvx1n5psT
         4iUahX9Zb53zHm5dQyaoa/4imUJx6CzeIDiI5dfHV7WgfkquVlNIFvia4HynfDvIX3dO
         CrIHAZeK25S1MT5n681aeSDweGaxlvFKfgj/j0iA0J26dDQkzmH01iyZqjfla53D5Yqn
         bdqlLYdL5Q2M/NzA3M0ek4cDfP49BGfC7D/V8m2pIDXPbdM1oOipFJn3pt/AnVPVo+ue
         USWtc7machm90JEyB1bpG7aG3P3KUoEawWvboNOSoDhBMvoVGNg2XAF+In9JGOzFu+4G
         fxvw==
X-Forwarded-Encrypted: i=2; AJvYcCW89vvzwTYpQzUHb2p7YLSz1hBeFkeqMymwqXIH/ia9iARSjlFw8WPsnIgI59AO6IJvZ29zcczY8b2tiN1MAMGcab+vwBT4ogcz
X-Gm-Message-State: AOJu0YzFok4gPqBHZexwZzlXhxAn+aX6D3S73f45y9gbbcpRMm7FMK2D
	4Bg68Jx3/fRhOcXcyOrH4xyoVVf68ufj2WzOMlq8BRQd87pox3GUNW7fw7imhcM=
X-Google-Smtp-Source: AGHT+IFExQENk0/Qd555IG/EUuoRfARrIJ+Yr6/7BUzuNHLfiah2GpX26wCqBjq7hXB3G/bIAf9HQA==
X-Received: by 2002:a9d:6a14:0:b0:6e4:7473:a865 with SMTP id g20-20020a9d6a14000000b006e47473a865mr9880047otn.23.1708979068539;
        Mon, 26 Feb 2024 12:24:28 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:190d:b0:42e:8ba6:eb34 with SMTP id
 w13-20020a05622a190d00b0042e8ba6eb34ls822306qtc.2.-pod-prod-09-us; Mon, 26
 Feb 2024 12:24:27 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVYE0KQH9nr9522Xual16GYVuN7XUO80d5+4MP7HtDTZwdamTwL6wLJdnXVb0uYPsHv+RqSXyGAaQEoHOzkufz6m+QXp+Nuuh+bz4GM
X-Received: by 2002:a05:620a:22e3:b0:787:4082:56d0 with SMTP id p3-20020a05620a22e300b00787408256d0mr189163qki.43.1708979067623;
        Mon, 26 Feb 2024 12:24:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708979067; cv=none;
        d=google.com; s=arc-20160816;
        b=R6ZWKpHJ5Z0xZ8X+2CByGbfITMg6ByjLpx79dMRRLNmRb3JD9kVGpOX9+7JRE5Qpey
         rPflYaH2ypgNb9/vss0r8zbKAedlqn/IVwP4QwwewLn308W0JFV2Z9ZvS7cuXGSHXO7I
         BDuSoQREHk2SKpv48qiW4nUfEmFeV1A4rITTZh6Wr6stT2b7uVBS3ScNr3wmMwgDL2KC
         lYiMNtrxjjk6FHUhdavM8XwqZTFDw6VxFlAwR7ue6bseJoqG4rYx0SodOdZyiXXi3fQ8
         kcXMVd+T4mjNlRReolTLyKipiUaVkkIOKbCuMr7RZXHd9jLPfdYRcyHO4mz2l9QznaHv
         KPEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=g8Ek+02nbG0HfFQsZH2vsmiO6iOrPGTSBhu7q5hP0YQ=;
        fh=xjr+nr5u++CU8k7N6XBcrDU/Vwd1Ngx6NopgaRunhU8=;
        b=r2339pBU5w/1K/PfCt+JSeWyC1WztJklKXut5ZTYN0OCg/N+Dss9644IWAuQtJbKvo
         NyCEBu/oe70KvEsNg0axqKUTgnANCVfaiUSEMbjddcQNK3wvdWxW12lq30Ez4Z36oh8g
         OWJ1X1UkLD+JtGX9JMi1R3ayT+fLMM3XOTDNFGoQMyglJXzr1bLKXt89Ape1Gz5lsMKE
         BDavt7rA2QT1G3N+7upIQXZ/SSIzR1Du8jcZmBYvZdyjdwFntNK8hn04lSwIPcxk+kR0
         RH0Pch9gHRc152biooejlLhNVPQF0b/GO95i+7lNDNFSYT40TsmwZJXv8h2ZxCkx+0+G
         AmEw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id w21-20020a05620a445500b00787e01e6290si621974qkp.305.2024.02.26.12.24.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 12:24:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-137-lY9-lUF7OnC0dBGJKrFfiw-1; Mon,
 26 Feb 2024 15:24:26 -0500
X-MC-Unique: lY9-lUF7OnC0dBGJKrFfiw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 230EB1C0BB41
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 20:24:26 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1FDE8201154D; Mon, 26 Feb 2024 20:24:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB1A12026D0A
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 20:24:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC3763816446
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 20:24:24 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-253-grb_9OEvMS6gi-b5oKV0FQ-1; Mon,
 26 Feb 2024 15:24:23 -0500
X-MC-Unique: grb_9OEvMS6gi-b5oKV0FQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TkBsz0N7Jz1CsY;
	Mon, 26 Feb 2024 15:24:23 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TkBsz02pgzcbc; Mon, 26 Feb 2024 15:24:23 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TkBsy75gdzcbC;
	Mon, 26 Feb 2024 15:24:22 -0500 (EST)
Date: Mon, 26 Feb 2024 15:24:22 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Martin McCormick <martin.m@suddenlink.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Keeping Orca Talking
In-Reply-To: <E1reg56-0002ET-Pr@wb5agz>
Message-ID: <66415a9a-09bd-5d8b-4629-485bf949ac0b@panix.com>
References: <E1reg56-0002ET-Pr@wb5agz>
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

That's why I like amixer set Master 100% unmute;alsactl store
Something else /var/lock/alsa.state.lck may need to be removed for alsactl
store to work.
One thing I haven't figured out about alsa in aplay -l on systems with
more than one sound card is how to tell which of all the cards is actually
in use at any given time among available cards.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 26 Feb 2024, Martin McCormick wrote:

> I am really good at getting in my own way when it comes to
> keeping orca speaking.
>
> 	The system running orca is a HP Pavillion desktop which
> is about 2 years old, running debian bullseye and it sure cooks
> right along very nicely except for sound where it's just one
> thing after another.
>
> 	With this version of debian, I installed it from a debian
> iso image placed on a usb thumb drive and it talks if you type
> the lower-case s as soon as you hear the beep from the piezo
> buzzer on the mother board.
>
> 	I wanted to adjust some sound levels yesterday so I fired
> up alsamixer which I am not familiar with.  Alsamixer is not a
> GUI application as such as uses a curses-based terminal interface
> and can be accessed via command-line terminal.
>
> 	I logged in to mate's terminal and commanded alsamixer to
> start using card 0 or -c 0.
>
> 	I am not sure what I did but about 2 or 3 key strokes in
> to the session, I typed the Enter key and, poof! voice output was
> gone.
>
> 	I finally logged in to that system from another Linux box
> in text-based command-line mode, downloaded a backup of /var and
> selected var/lib/alsa/asound.state which had that file in it.
>
> 	After copying /var/lib/alsa/asound.state from the backup,
> I did
>
> sudo alsactl store which seems to have stored this older version
> of asound.state then I rebooted.
>
> 	I was able to log in as the login still talked but as
> soon as I entered the password, everything went silent again.
>
> 	I finally got on the Linux box that has no GUI and ssh'd
> into the gnome system and then called alsamixer as me and that's
> when I realized more how this all works.
>
> 	One is supposed to press F3 to be in the playback setup
> mode.  Apparently the function keys like F3 send a terminal code
> sequence that is interpreted as F3 and then I noticed that the
> volume slider for Master volume was all the way down to 0.
>
> 	The Up and Down arrows move that slider so I moved it up
> and finally my orca console started speaking again.
>
> 	One then presses Escape once and alsamixer closes.
>
> 	Is there a faster and better way I could have done this?
>
> 	If I hadn't had a second Linux system, I'd still be
> messing with it and the curses would be more than just in the
> command-line interface.
>
> 	It's amazing how quickly one can go from hero to zero in
> this game but finally I seem to have the talking orca terminal
> back.
>
> Martin
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

