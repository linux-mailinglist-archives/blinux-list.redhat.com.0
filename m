Return-Path: <blinux-list+bncBCVPTHE7K4ILHUPQXEDBUBB6WGQGO@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id A26249D1FCE
	for <lists+blinux-list@lfdr.de>; Tue, 19 Nov 2024 06:57:09 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-461011bd338sf78502431cf.3
        for <lists+blinux-list@lfdr.de>; Mon, 18 Nov 2024 21:57:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731995828; cv=pass;
        d=google.com; s=arc-20240605;
        b=ElUmTxH1wipzjiSIRfLab+EFFkJejdD2bWiQC8ErxJOu/ft4nM/ZxHrP8cFd/I83Ce
         MzbsZoV24kc0R8YNE+CDpNj/CzP6LE5c9aHh3JiH7BLWix3BR80JyOuE5G1NEAjB3RN3
         H2Uec4msTL1Hopx3IIvpch0D58Z4BCV2G16SirRtFIF+LVJIQ42j3+CAFuZyaCT1fs4q
         JxXfOu4bbGE7+vhR9PVvET66F/iYzHlADsN4gUMwuTw1wDY7ZIiiESRcSYe+174Ig9Nk
         xBS7K4GkfECuDomdQbveNMLVS6U0hd0QDyfPKY9I5pHg5L+wpnQ2RTEEe1yBdSY8NMOh
         l4FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=49YA/nvyQ+ZCqjSFzennT0NPdWZ/En/uZN8esHmMvpQ=;
        fh=GS8ZIgEgv3DSEmibYC6ST3+qs4k+8uitNXI2zcSMsO8=;
        b=T3yqH0yVv4d7nXJkL9sYDCimqh26XbZ9hzJ3+xyvRB31s539Eop4VJuUrn3ND3fWDO
         hVP5cHaGgG9HUhAALlW0GyeifsIWIT9R1e3NCiU5C79BwngIb/LsslmZt89PnzhWUOU4
         jyHM2YF7MMSbvJtB0Nz9a2VZF2Axr9pfpDlqavoavX5SmqviXxw+/NGhEyvFIObFLIZC
         L7oLK+KmNwDXhbH/ziUExJL/KRUAQ4Frr3i+LSvrVzjI8EZFJ3EBfU1ZsERr3IC124Cp
         /Fw2CBt96kuXc35GrWAMBpaF/aL6GwyLOCYM/RUkKNkfh4aO6wIU96HMeyY8mN5ogtR3
         FGoQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731995828; x=1732600628;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=49YA/nvyQ+ZCqjSFzennT0NPdWZ/En/uZN8esHmMvpQ=;
        b=JMxYN8enduwFFh7MIdBzWFgo3waPR8f95nxhll3B36rNdya7Cv8Fu/OBJpdg0o52pp
         zTJbf8Gy6JhXNusu5ZKqhtrlbZMlkYwZ9Rh+UysNvFkGgvwRAMz0uo+FRfwtVBhLihH5
         VYJ6SnclazI1bBllyJNww5g1mR6ulhjhk/k0ms6V15Fh3VEpn8DWupn57mFU4I65cZu9
         zNpo0WgZF1yTmDrZwd6U/94YReuQazk+G67PopykhyFGy3PUjbTZ7+OlaHXQvV6LtAsy
         V8mXKxxk50mXQd+haZ2AbfLXQj1naXj/shhimBt/vF53PJlbH+mDTfgtmMX1dQPq2o5v
         IFnw==
X-Forwarded-Encrypted: i=2; AJvYcCV20pjDFHpD15EaKACA60JlI2RCmSnXzYugb4Zc4r+kACcJ3q/TPMfslJPb2bsihogsVWD3DQ==@lfdr.de
X-Gm-Message-State: AOJu0Yxnx97wcePm6F1ZTmPOH2QPaSjMkiMTYwx0G6j3IUgvaZqgoU7S
	0cZ7NwvoWkTGIil+5fPlRkpeh1XDNLmshSTnvOXaKgUDj5YMkjISA3Dx5ps6vNM=
X-Google-Smtp-Source: AGHT+IG2hDEqTVGfEkCpTBmynRrVx6dSHQjyTpuQFJZdRarONtZQtgNvk1i2FTBAKQg0GgjnXN6FqQ==
X-Received: by 2002:a05:622a:5505:b0:460:a795:fccf with SMTP id d75a77b69052e-46363e170bcmr223598391cf.19.1731995828464;
        Mon, 18 Nov 2024 21:57:08 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:994:b0:463:f0e:44c6 with SMTP id
 d75a77b69052e-46357ce50eels71149131cf.0.-pod-prod-01-us; Mon, 18 Nov 2024
 21:57:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXVj0WdqK8Pu+frHJyFlohCj3qqd2yntvVksjncJFQE3aJ+/uYh2af2OLKpeoF+2NNFTWKWB2b3O/xcRg==@gapps.redhat.com
X-Received: by 2002:a05:620a:4092:b0:7af:c60d:a0a7 with SMTP id af79cd13be357-7b36232da2bmr1596015685a.50.1731995827306;
        Mon, 18 Nov 2024 21:57:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731995827; cv=none;
        d=google.com; s=arc-20240605;
        b=Qp8w/GxNeeEu67gXcMRYqbDNUwVxhLZlvQgUDJSGdh4CUwF7RrorVbN8J66ucTSWxO
         f+wLWmS2993q96KILxqQf0mU4j8rlM7sMhFS16ZThBAli/XQunoTo+hPrkk/MzcK4u4g
         7B9p1QpOa65cF7eA5QqFAxRPkeC0zH410CA589+b/B8ONYY8cdFVqppurIDuG45KrFdD
         vBURqRBjwaM3Fslm68BIhy0O+Hbc9Yhl8QI4IMzoJTaAkPRwd2PjKYnMMd6hW1PseO1F
         h8vDBRrlfJ8zibvAZml6k8uHCfpOCWkRYjvCeoAmJU6i1RnbcUdjTEWdqrK3hfxuIa50
         +b9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=49YA/nvyQ+ZCqjSFzennT0NPdWZ/En/uZN8esHmMvpQ=;
        fh=gmZC7ZMrQC/Gponpur3xFGLdzPODy6T5Eb1VYJrQj1g=;
        b=YrGbqAYzSO0tO1SR+x1rdrNGfygzY1M2nEs6PJFu/jjFn8h8qOX60TrrHYRu4Mo2WJ
         zm9Fg+FrIO8BBwsZyNH0xtXhyaBW1FlPz9hECbH4xWuRClO4ykallHpm1hZvqP1VgWeP
         9jj7/1Y0pS+2QgfYRT1iT7jVLtM8j7xzkbr8aCB8nqbpWK1ljvpn+ZHkmFDh1ghjhojZ
         SJQGO+AqpM/pWXx9rW8KaUMgYuyx21biaP9wpGvt+ftVHb5m3dh29ENhmy56oMQPD5P0
         C3Iih5QLcgzEMsUpIpaTRboI5zF3mcjABbOfg0/+AZl41T511DF1aS6EeE1VGaGKJkmy
         4WNw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-46392b9c403si16861261cf.39.2024.11.18.21.57.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 21:57:07 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-250-dYmTVaBKOyWNTW5OzLwiVg-1; Tue,
 19 Nov 2024 00:57:05 -0500
X-MC-Unique: dYmTVaBKOyWNTW5OzLwiVg-1
X-Mimecast-MFC-AGG-ID: dYmTVaBKOyWNTW5OzLwiVg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0B570195608D
	for <blinux-list@gapps.redhat.com>; Tue, 19 Nov 2024 05:57:05 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 056EF1955F49; Tue, 19 Nov 2024 05:57:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 032581955F43
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 05:57:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7B6631955F44
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 05:57:04 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-139-OvsUvR5GOl6_cjqEauwK9A-1;
 Tue, 19 Nov 2024 00:57:01 -0500
X-MC-Unique: OvsUvR5GOl6_cjqEauwK9A-1
X-Mimecast-MFC-AGG-ID: OvsUvR5GOl6_cjqEauwK9A
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 1714E40508;
	Tue, 19 Nov 2024 00:57:01 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id D45E71001C1; Tue, 19 Nov 2024 00:57:00 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id D27CA100090;
	Tue, 19 Nov 2024 00:57:00 -0500 (EST)
Date: Tue, 19 Nov 2024 00:57:00 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Kyle <kyle@gmx.it>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Piper as an option in Linux distributions?
In-Reply-To: <4a02e3e2-08e8-4643-9795-64c7ec99b752@gmx.it>
Message-ID: <Pine.LNX.4.64.2411190045010.399063@users.shellworld.net>
References: <Pine.LNX.4.64.2411181752460.395171@users.shellworld.net>
 <1734eadc-f27b-2f63-67b8-1a5aab1170cd@hubert-humphrey.com>
 <Pine.LNX.4.64.2411182352010.398469@users.shellworld.net>
 <4a02e3e2-08e8-4643-9795-64c7ec99b752@gmx.it>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: HTsEgpAr_FcMEjZf42_0l6MXoovQEno8q8fMRDA0sGo_1731995821
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9UL_YodZ5VO_Oc0Xl-ClfzG0WyP7UPk-UBJS0mThxt4_1731995825
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

Hi Kyle,
Starting from the bottom answer wise.
I use DOS, am doing so right now, in fact, but I have hardware sources for 
speech.
because freedos is currently under development, along with some other DOS 
distributions, another person started a thread about software speech and 
DOS.
Freedos needs  to use open source. There is, for example, a compile  using 
ASAP, done with permission. Problem there is it uses braille & speak 
voice.
Anyway, another member created a build using piper and provox.  His idea 
was using a raspberry pi in place of a hardware synthesizer. I am not sure 
if that was the basis of his recording, which I heard myself.
I personally  must be profoundly careful about speech sources, many can 
trigger seizures for me due to an accident during a surgery impacting how 
my brain manages allot of speech related  things just now.
Dectalk might be ideal, if legal smiles.
I believe one of your references is the option used to run speech in the 
terminal of the mac, is that correct?

If you want to learn more about the piper adventure, I can share how to 
join the freedos list.
Kare



On Tue, 19 Nov 2024, 'Kyle' via blinux-list@redhat.com wrote:

> I know of Pied and got it working here, but it assumes that the screen
> reader can talk through speech-dispatcher directly. What's more, it has
> a graphical interface, so choosing a voice wouldn't be as easy as a
> command. That said, if you can drop in a configuration file, it just may
> work without the graphical interface, although I don't have one to send
> along at this time, as I found it to be a bit funky with random letters
> and sometimes numbers. Even some words made it mumble at times, so I had
> to revert to DECTalk. Now if you don't mind RHVoice, it works with
> speech-dispatcher as well, in fact it ships with its own
> speech-dispatcher module. In either case, though it may not work with
> speakup, either RHVoice or Piper will in fact work with both TDSR and
> Fenrir in text mode, as well as Orca in graphical desktop mode.
>
>
> So someone got Provox talking with software speech in FreeDOS? I need to
> find out more about this. Gives me something else to play with over here.
>
> ~ Kyle
>
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>
>

