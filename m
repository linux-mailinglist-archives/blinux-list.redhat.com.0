Return-Path: <blinux-list+bncBCCIDSOV5UGBBZ5DUO6AMGQE6Y3DCKA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FA6A1369D
	for <lists+blinux-list@lfdr.de>; Thu, 16 Jan 2025 10:31:21 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4679db55860sf13995601cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 16 Jan 2025 01:31:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1737019880; cv=pass;
        d=google.com; s=arc-20240605;
        b=Gdc3OSQv2aEEtNJmkXPBeifur9bRK0WrjmkcTLYEArq0/DBYajJtoUYN1HtmZ5dNAI
         tKViUJh+RQXsH3p2tsBvAdvdMaKGwq46xTbH46FWcFszFtUrnUV8tATBrRrnAd4f/LBa
         gxTFV3ZOWq3YDo5vfj8f9ff2Ci0IN4AlDlwBqs10DBKDBxX5834y58JGhvqDZtQDi/jx
         23SNElI0UE4MnyN5CLs7Bo/WMVoRGsbEuY6QL0gqFoC9QO04SCw84LJTgH3OfLw7GXuv
         mIaQEunU0tHwgHb/wYQOXmMCWzo4fuyy3huD0PgS418Nj0YCaYCb1mCoOZAXAnmg7XZ6
         hk7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :feedback-id:delivered-to;
        bh=O9npTXuBS+39PeB3yW5mYxPnYaw0CQ9u//K7Br5kecU=;
        fh=9zVeenrfwBlGrcBhdYEojWEIyEyUanBntpYZ7yioYf8=;
        b=CTwO6aJuUQsBKzs+g2MnAQQ/WSJHore4LIdLvwYZWaDotpsQIUrOGCcoaMJzvPs3k9
         Zbp/tPtAgNYOdYtPGp2QgzKZNjxytNCcdhrlPqKABvavNLCVtaWFc9kwjx2DhWxHUNwQ
         eeIProzAf0zSGSzioIm8vy9xS0iQGZAXEwTFumkyhx5Bo5NytRx6pfieXPfTFYZTX8+s
         MQYixu+vTbpbrqrprHx9QuUmyRC6tkTz6mb77I5OFQt8p14bhDe15QW+neWzjiciIjnr
         J3ts7sVgGjnWNeinXzpbIyW8upgjjlSGssfDN2ng+zcrhcSM8JuVVJysoAM95hzkK6xk
         qv+g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 103.168.172.151 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737019880; x=1737624680;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O9npTXuBS+39PeB3yW5mYxPnYaw0CQ9u//K7Br5kecU=;
        b=DgptgCMelQNF69aU83YrM0Lic0VKV+JBJqY6ooKq4FQNmfD1q0TVJrEbupp5AwYX0u
         CtGkz1Fulz79DVSHlV2lwz1JhT14eeR32HdmKPPV7R7ioqNNbu/sT5Eql5iegVnMZfUE
         MuLvwIMB8tMat8AApdwNAKdrnwoVHbC1gpXdDyoSEGt8hLguqGAG8IekIGKCv1PydkHu
         3g2Bi/BT2uQtU44QYqvywqSK9Wtv9iMU4JTEKpsti1m2XKohO/m9L/7UfY4oyl7Op4p/
         qmoSOd1Vq/lvpFa4BG4aaB4txoeQP37TqVwHI1MQhYMdEW24+hMVjU8XVC0Llm4iDGTV
         rMDA==
X-Forwarded-Encrypted: i=2; AJvYcCVUasdNLf1gLh2puDiYNQgFSrJuOqTICZLJ/aH5Gbid5Iv/Uie491RMJT3KLjx5kfIAW/niBQ==@lfdr.de
X-Gm-Message-State: AOJu0YxyYSQb8CaZh/T7D7EVff//P1ZndqFTiaVlDIs/r/oOpocFJ8ld
	MTeZ+qNg/mQ2bT3UyvxPWlHFX0utfZ9/7Gv1gYYnhzjeNPGTp5vUzncr0WGDd8I=
X-Google-Smtp-Source: AGHT+IFlyOkviDAsqyGlpa4ps7hNJtErKUt+I540HWECH9WccVd+5wxEahix422kyYr1Gu10GeAEPg==
X-Received: by 2002:a05:622a:302:b0:467:63fb:68d7 with SMTP id d75a77b69052e-46c7109eaf9mr563608721cf.50.1737019880280;
        Thu, 16 Jan 2025 01:31:20 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5842:0:b0:466:8f66:abeb with SMTP id d75a77b69052e-46e02e0d266ls14899541cf.1.-pod-prod-09-us;
 Thu, 16 Jan 2025 01:31:19 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUCFufrDu510auvHvvCMm+GI35rbsSOdLth/2gQZayj1vi4pHee8wR2Of1H+YodYHJ0CFULHeBQ0GahKg==@gapps.redhat.com
X-Received: by 2002:ac8:59ce:0:b0:467:5082:74bd with SMTP id d75a77b69052e-46c71083dcbmr539026471cf.34.1737019879261;
        Thu, 16 Jan 2025 01:31:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1737019879; cv=none;
        d=google.com; s=arc-20240605;
        b=O69uE+CJeAZah8lmDR0KoO1iDgvfnMdBQDo4QzNeOOQgzAUY2OjztzzT9i5SYKSyD0
         anmx93WynJ2aeHhlxzMhHAxpOAa31REXGRnnrcTK8yTOsnkhE0LWJfCWZPlHuCg40IrV
         MpQqRDjHzATSdaZz3hKRnn3/GqoZy8NawXWOSU7/kJe00uq79fkr0Qe3EUXahDAux1gF
         ppBtFOqBkNZlYFIUJzZqH700H4qo+zMy/8jziAwWVFNOHNDsrcnHmwMFAAqXAVxQL/yO
         WaxIcKO2nTKHAGba4Ko8oE+FBvzAF4/QHBnDZDJq+0CAJlosPUFhEXI8C6Ga/e7sKKbu
         I5Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:feedback-id:delivered-to;
        bh=WosjA81B9CmaE2Yx+BS+OPrVDcX8ekMW9bk+WeYTyBU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=XIlBsZ/epYdYIzOsqIy1TdtXNyxeoCDrFxg+TYE2LhtKwdN1CdAtk6oqLdBZjIk2kb
         shlJrZnRD3HYlgCI2np5PvJzKXbEjO//+rhevdvGGnYXsHoXbuffST39EPtfTtONiONa
         2lW8u/zUtFYDbEZ5naeiYr7Td4UbXbCbYwPhXriB/np9WzCbaK22Bcpjimw5wHt0wFrm
         mlTcoD4SgMwQltCK2SV51c9n2vYDMxuAzOXSdF9Vgo9z4qudWi64SUfXDfRW2elF9+wj
         0JheUQYDPud1A8ckHnoqpeASCcijxVbjowx5mdQrHeLrnyxwUCqnD6b0hnkXHRVgP/3Q
         rzJw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 103.168.172.151 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46c87415826si159041011cf.591.2025.01.16.01.31.19
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 01:31:19 -0800 (PST)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 103.168.172.151 as permitted sender) client-ip=103.168.172.151;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-639-jZFede4nMIu5NOQ7M8IWSA-1; Thu,
 16 Jan 2025 04:31:17 -0500
X-MC-Unique: jZFede4nMIu5NOQ7M8IWSA-1
X-Mimecast-MFC-AGG-ID: jZFede4nMIu5NOQ7M8IWSA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ED0B51955DCD
	for <blinux-list@gapps.redhat.com>; Thu, 16 Jan 2025 09:31:16 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E72B819560AB; Thu, 16 Jan 2025 09:31:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E4BDE19560A3
	for <blinux-list@redhat.com>; Thu, 16 Jan 2025 09:31:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 663AC19560B2
	for <blinux-list@redhat.com>; Thu, 16 Jan 2025 09:31:16 +0000 (UTC)
Received: from fout-a8-smtp.messagingengine.com
 (fout-a8-smtp.messagingengine.com [103.168.172.151]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-241-s-9mZQLRMQG5H5DwftwqrA-1; Thu, 16 Jan 2025 04:31:13 -0500
X-MC-Unique: s-9mZQLRMQG5H5DwftwqrA-1
X-Mimecast-MFC-AGG-ID: s-9mZQLRMQG5H5DwftwqrA
Received: from phl-compute-02.internal (phl-compute-02.phl.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id 9329C1380824
	for <blinux-list@redhat.com>; Thu, 16 Jan 2025 04:21:35 -0500 (EST)
Received: from phl-frontend-01 ([10.202.2.160])
  by phl-compute-02.internal (MEProxy); Thu, 16 Jan 2025 04:21:35 -0500
X-ME-Sender: <xms:n8-IZ_VeG3CS-0NOyf7HYpJsOYF3s29NStCvRE-TwCeQC6Fweu5zNw>
    <xme:n8-IZ3moyZp9iRzh5TsG3OWoVt_ZuNmRjcSWC0ZKP-hvotsh-OJEq_Fm74us1viCw
    ON_i-t9koNJ2uWU0bU>
X-ME-Received: <xmr:n8-IZ7bJJUorUj32U9J7IDkxqh13xb-eess1JZqGhVDVLCRu5wKR2KGAxX3iaefrxVgFTyxLAW7qPrBsT4uzOFG7-3RF>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudeiuddgtddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuf
    fkrhhfgggtuggjsehttdertddttddvnecuhfhrohhmpeflohgvlhcutfhothhhuceojhho
    vghliiesphhosghogidrtghomheqnecuggftrfgrthhtvghrnheptdeihedttdethfffve
    eutdfgheelkeeigffgvdektdefleekhfdtgfdtjeejhfffnecuffhomhgrihhnpegrrhgt
    hhhlihhnuhigrdhorhhgpdhrvgguughithdrtghomhdprghskhhusghunhhtuhdrtghomh
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjohgv
    lhiisehpohgsohigrdgtohhmpdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpoh
    huthdprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:n8-IZ6XS-5Gu-8a77cQHd0NktU2qYkb7h-Zvuk54ASljNq35lPYa5Q>
    <xmx:n8-IZ5my2OkDIAA_Isp4gDbjgA7AzkHyFjzMMJokdIR5_Sj8HuPDtg>
    <xmx:n8-IZ3cdrBWdOfLykcptEPl1O6TJWJ8TnHRdPAegM3XelCZwt0U1jQ>
    <xmx:n8-IZzEHE6sxxa4ttFXADi14NBomUemf1wq2sKi1bemEmvgSVMkVFA>
    <xmx:n8-IZ5utekF0Xm4q5WcYdJmi1c7ZdXo-rGqwllBJ8Eo6q58mWUJ6QxMH>
Feedback-ID: if0194970:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Thu, 16 Jan 2025 04:21:35 -0500 (EST)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1tYM4A-0004uh-2N
	for blinux-list@redhat.com;
	Wed, 15 Jan 2025 23:21:30 -1000
Date: Wed, 15 Jan 2025 23:21:30 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: speech-dispatcher Before I Do Something Stupid
Message-ID: <20250116092130.tn7dbr4wlw43obkj@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <E1tXPM7-000KS7-0c@wb5agz>
 <45995941-6847-4694-b01e-d67ee7418667@gmx.it>
 <E1tXuBT-0001H0-2A@wb5agz>
 <20250115080337.fjk25kiajtxwfbpr@sprite>
 <CAO2sX30NOJL6Qt39R99h4G=pKpw7Wc+tbh7OJW4X0X8iMNWsXg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX30NOJL6Qt39R99h4G=pKpw7Wc+tbh7OJW4X0X8iMNWsXg@mail.gmail.com>
X-Mimecast-MFC-PROC-ID: qrGNOg_sNrO1mxKRs48y3aaQSeLAwnI8GmWU7jfWMM0_1737019872
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: aewktIjp1S7s50SJnpi1aV3PhM67EcsiK80TTtE8AFI_1737019877
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 103.168.172.151 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Jeffery Mewtamer wrote:
> Hey Joel, any tips on how to successfully ditch pulse?

Hi Jeffery,

If you depend on speech to use your system, it might be wise
to have someone helpful around before fiddling with the
sound. In particular, ALSA has a bunch of mixer settings,
and for years when people doing a new linux installations
would complain about not having sound, one or another mixer
setting being muted.

There is no guarantee what state pipewire or pulseaudio
will leave the sound devices when disabled. So you'll
want an unmute script available.

Here's a reference for commands (or a script) to 
unmute various ALSA parameters. 

https://bbs.archlinux.org/viewtopic.php?id=124769

I would compare the parameters in the script to the
parameters listed in `amixer scontents` to be sure it
corresponds to my hardware--I think they're the same for all
soundcards. 

To not fiddle with your package dependencies, it makes sense
to start with *disabling* your sound server rather than remove
it entirely. 

For pipewire this looks simple, just two steps.

https://www.reddit.com/r/Kubuntu/comments/k5ojur/if_you_have_audio_problems_turn_off_pipewire/

However for pulseaudio it is complicated, taking three
answers by three authors to clarify:

https://askubuntu.com/questions/1197420/how-do-i-stop-pulseaudio

When you get pulseaudio/pipewire stopped, you'll need to
restart your screenreader software so it will access the
ALSA device now exposed.

Now run your unmute script if necessary.

Through all this you haven't altered your software
configuration, so you're always able to reboot to get back
to a previous configuration. Once you've verified that you
can do your work with bare ALSA, you can remove the
pulseaudio or pipewire package.

To me pulseaudio and systemd (written by the same author as
pulseaudio) add a lot of wrinkles to administering a linux
system, more than is justified by their capabilities, which
are available elsewhere in small, discrete libraries.

I migrated from debian to devuan to avoid introducing the
complexity and huge attack surface of systemd. 

Good luck configuring your audio!

Jeffery Mewtamer wrote:
> Hey Joel, any tips on how to successfully ditch pulse? That it comes as
> part of a clean install with how I setup Debian itches against my
> minimalist tendencies, but as much as I want to tell Aptitude to purge the
> pulseaudio metapackage, I'm afraid I'll end up with a mute system before
> Aptitude even finishes executing changes with no idea how to restore sound
> short of reinstalling Linux.

-- 
Joel Roth

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

