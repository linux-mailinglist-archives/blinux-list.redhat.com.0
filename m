Return-Path: <blinux-list+bncBDYPVTOXSQEBBUNNR6VQMGQEAK2E6RQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id F268D7F968F
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 00:37:54 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-67a3bbd9510sf7143486d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 15:37:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701041874; cv=pass;
        d=google.com; s=arc-20160816;
        b=ghXroCIR8FCBxDBRj9irWRnnOePtoULP1IIn07rZaOpS+D7W5E/gi8nh+YyZ0Je2yO
         h+rvA64Buj9nEJb4lm5T+P+iiLaKsGflcF8mdrwm64V0w1z8jSR2qCcVNx2mwC850CwP
         CrM01ItEdhoI9R0i91jpqK7rD2x7IvATKK9iHJV6mn8osP3dABQ4+nXWE/RE7iEH48w5
         IFZmspsjLYLIQAc0KpGCiurmrpYWCb6jnWnvrOxcgV5zPncKuvQURDWZcMQEp8TEQvEA
         VhNNZvXDyw6mda29D5hXxft9uMCNbxScciScy9IBlNmTdJixTJycBzBnEO1aa5xiuhlZ
         UpFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=dRCDsgTmArb++Z31JMHhkXjDUFgYHVRVK9dzTc1dknY=;
        fh=jk4/8+vke49Mn/l4pp5wXjL65nsmbLCmV0qbuWlAFC8=;
        b=OSFPHIttGqBTBJ5n7hwKhkU3hErNExG9Bxpm7sHtMTCsoRdRs+LBwgR9a4GwMJhU7P
         07QbdKzZ1vGJwczLjfz9RIe9f9lr1nDIfa/wYu1UhXkTgUhaBRnuQyA4LGhKD35U4kqe
         ZyY2K5jA9HJDGPe89n/t/ixUJPRrm0Xc6SpRPsaQNaYA3T3mJWDWvAsWDb97p993xlOf
         AUJ+lF9gwN9/x+JG+cttWZ7KSR/HmlcRZe9CytODnop7KCvgfYO03UNh0dZeDlo+52lU
         zS2ZNmoJXTkG7OSVxkxMVKZxU8RIIJ4dp6FOpglJYmJNhMpl4Su3xoKqgkkFltaG5qJ5
         dR9g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701041874; x=1701646674;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dRCDsgTmArb++Z31JMHhkXjDUFgYHVRVK9dzTc1dknY=;
        b=mPViq69SA0/YfRORLJxljrv2JAERkrOCaK8FS/o0mlaUbKAqbJCb7vMdbFqSiLEqkQ
         fCWT3vtqWfkn5Fz/+Mt7IhfjQr+sTH6Qn9+m8MRMhawngAaGo1Iob+/Z/0+9Prt3Hrdn
         Pn7NanfU8MdxXWfA7Rl695YehoZTv3ShdDy7Ea61BNEFx77yD+oEQWnqNqxvBnChk6WS
         bYFT8BPqCpved0wSjk/cUOje5y7F/ACkTjwyb/SJDg7+1X8b56jeW4UFvetIAsxsgCuU
         G3WMaLG94ruF4PMaHAGiWMfHVqgKZG2v+8S6ej9xmBhAiBMXUIEaUAiLNaBKY73R1zZD
         QSgA==
X-Gm-Message-State: AOJu0YzQCisXbgZSOw3I01h9EUiJzVoVKR0aQKVwhUbvAkU0vCXl8PU4
	Q8gTNrIFQ3XbFPbbsNf7LRJK5Q==
X-Google-Smtp-Source: AGHT+IGCSZuLlAaDQUMgrJP3swnC7iQ2QWt4vLv3pE39LmZtZ3NHkfjzrfnltoNs9L0G8KPmc2fFKg==
X-Received: by 2002:a05:6214:5809:b0:679:e7fb:8e58 with SMTP id mk9-20020a056214580900b00679e7fb8e58mr10525468qvb.18.1701041873469;
        Sun, 26 Nov 2023 15:37:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:f889:0:b0:67a:218c:efcc with SMTP id u9-20020a0cf889000000b0067a218cefccls758758qvn.1.-pod-prod-02-us;
 Sun, 26 Nov 2023 15:37:53 -0800 (PST)
X-Received: by 2002:a05:6102:55a2:b0:462:ea6b:dd82 with SMTP id dc34-20020a05610255a200b00462ea6bdd82mr5155055vsb.1.1701041872833;
        Sun, 26 Nov 2023 15:37:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701041872; cv=none;
        d=google.com; s=arc-20160816;
        b=edjLtjmO+sgTBTQX4yIIsljparbAJNcodepoKxU4trpBW00JxWRoDDQA90A161OTlV
         KHgqVJlBiPTGSqFJHIdY+z+cpHZyng6yoZifLtU1qVDNJyWXy+dH/ifYRfVsyQIOxB0l
         eH3A8rqMd2ntopHXxjz8K+7AwiKhALAQn9zpnkioHyuPCSx+OoxSqaJjxFjIpwE5hSm1
         9muNqlI0WxytpjIgHZkb44ZUEeWdMPeBI2cEfTfvoq5ueeiHr3GkJ26+HB/sr4uRsaBQ
         BbtsxyTyk8XCEOMvp31odkfF0Q/GRQP7UEykJFIN1RCgEbsLDicfQBT6ddNybW7bCKeG
         4klg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=bAuqan0PPPNAIgxVGYq+YFAA9oJUp9TR9oEuqU+vhk0=;
        fh=jk4/8+vke49Mn/l4pp5wXjL65nsmbLCmV0qbuWlAFC8=;
        b=vHwtEx5xT8fwmjPcO/pdnCp1iKLww8F48fhdYqHFN7ricdaN6yW0G+BF9f2FG6L2Zi
         n/0er2SM29kvXYjJHN5sOSWFz8t9uxaVLfWC5GZE5WqaA9UXeFw6qWPq5orlRblDx/YQ
         rwFgJiZneCNeQBN0Rs0sVuAr6tyLupcNh4m6H1nuiBtdupd1NGeVMH77gOLzYUZS+dNw
         rgV5Lsft4czzNiR43g2d9R3GoQK7EhRpbhpiSvH3MPKMmQWoKuQEmj8nXXSQLtkGZjL4
         TI7OF+saX4edQEhBnLCe22Yu7l9Gxl9p3xt0/bEq9umMbqS5CCuvtYe8RYY7yFdv5JnK
         oUVQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id q8-20020a05621419e800b0067a268c8cc2si4480272qvc.185.2023.11.26.15.37.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 15:37:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-582-HR9ZoIxAMhC0TzaJrXEY0Q-1; Sun,
 26 Nov 2023 18:37:51 -0500
X-MC-Unique: HR9ZoIxAMhC0TzaJrXEY0Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A4F538062AB
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 23:37:51 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 46F7AC15882; Sun, 26 Nov 2023 23:37:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FAC6C15881
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 23:37:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1EC2B810FC0
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 23:37:51 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-147-WAIR5gebMwKqXJWmkE4Z3g-1; Sun,
 26 Nov 2023 18:37:48 -0500
X-MC-Unique: WAIR5gebMwKqXJWmkE4Z3g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SdlWc0byKzr4P;
	Sun, 26 Nov 2023 18:37:48 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SdlWc0B7Fzcbc; Sun, 26 Nov 2023 18:37:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SdlWc00tfzcbC;
	Sun, 26 Nov 2023 18:37:47 -0500 (EST)
Date: Sun, 26 Nov 2023 18:37:47 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karl Wilbur <karl@karlwilbur.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlcrc file needed
In-Reply-To: <CAMuGJS=qR4KKwsFrDNa3+tENTWHMZ3r1Z+zHc=AgGHTg0st5Mg@mail.gmail.com>
Message-ID: <0ac79846-59e1-8efe-8444-7240592473ad@panix.com>
References: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com> <CAMuGJS=qR4KKwsFrDNa3+tENTWHMZ3r1Z+zHc=AgGHTg0st5Mg@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 1
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

The github site is gone no longer exists.
The incomplete documentation on vlcrc configuration location I have
already read.
If missing a vlcrc file how to get vlc to make you a basic vlcrc file that
could then be edited would be a nice thing to know since configuration
file format and valid contents isn't documented.  I'll try cvlc and see if
that works.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sun, 26 Nov 2023, 'Karl Wilbur' via blinux-list@redhat.com wrote:

> This is pretty old but might be a good place to start:
> (a GitHub repo that has someone's `vlcrc` file in it)
> https://github.com/bashwork/settings/blob/master/linux/.config/vlc/vlcrc
>
> Also, VLC docs about config file location:
> http://www.videolan.org/support/faq.html#Config
>
> --
> Karl Wilbur
> 513-322-2481
> karl@karlwilbur.net
>
> On Sun, Nov 26, 2023, 07:36 Jude DaShiell <jdashiel@panix.com> wrote:
>
> > What's not on that videolan website is instructions for command line users
> > giving format of vlcrc and valid items that can go in that vlcrc file.
> > I installed mpv and vlc on archlinux and have mpv working since it's
> > better documented but not the case with vlc.
> >
> >
> > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > order." Ed Howdershelt 1940.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "
> > blinux-list@redhat.com" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to blinux-list+unsubscribe@redhat.com.
> >
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

