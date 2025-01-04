Return-Path: <blinux-list+bncBCNLZ3P6ZIDRBGOY4W5QMGQE47MT5CQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 22281A01612
	for <lists+blinux-list@lfdr.de>; Sat,  4 Jan 2025 18:13:00 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d87efed6c4sf213951666d6.1
        for <lists+blinux-list@lfdr.de>; Sat, 04 Jan 2025 09:12:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736010779; cv=pass;
        d=google.com; s=arc-20240605;
        b=HT5t4/k5fPhO2Kn9wo7bsc7Q/UE+tEJQVWYQ02DD6ZM/n5urLRxzgSz017DHsfSLgH
         +GEL8mboiKbSApT+FxnnOuDfL6lNPLOlCZ04JEbOSLSjkyIB4km8LFQIXmOHaZ1SrENk
         oFOf6SVc+4uLG06Xg68r40dTmiOh6ew5d7jvU/ke5awYEx8nvaOUuXCSuQXciQN6Z3zJ
         d3qTqzzyyeKpb2Ucee0YnlqMXwhckHl7TPl0HwgjM9MeS9yAwIwfUQOW5/TaqSpS8b9K
         UKnHQGyUjwSFSsT+079mPfra658NRi3kUos0hcpFRVm2bpsS/M6N12TCY5mev7UTQrU2
         2K+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:delivered-to;
        bh=d9gGpCePKmyP65IJNkNzZUfpV3TaWcy3RZjl0dJX9+g=;
        fh=NCFA3pVZdPxJSefBZ+Bo06pCK4j7NkN8JKeNwvqxifw=;
        b=kqHn4oraj1VXpBso4nj61YdapSz3cl+4WH7kIIU+6YfO8QdMcP1dcEVLjJfz7NjXfa
         fNht9a5iwGtCmfFjhFWr119Z4mbVA1g/yelTQdGlxQdJKtKLDseun+1cd/4NPMgeqFqE
         +bst22AIxIrarxoxIQ1sMp6cz4ecXDV22x68hVrbr+xSp6SWy6ktdvYFFhtSat0uoxGu
         ft621TGYblMIACriLWDMdwyzPUGvctZ2dK8jzD2xXrMuxjUwNyrOMD6WRWlocMmAGKgu
         8iEWtjHsUMnLnj5HD5o9dXI+fHQyJ3Ikys4PxiozlKIxAtGzo4FHEicgCGRlTaG7jKb6
         jaOg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.174 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736010779; x=1736615579;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d9gGpCePKmyP65IJNkNzZUfpV3TaWcy3RZjl0dJX9+g=;
        b=Hg67uxGPacDroHshLOufa5uqXba6jf3QpfXTHCLAyU9SPrRC+dYCTJfMHDnvlB1+Wt
         a150iSXPZNRd4E4mooDqbEqKTR0fxWZwrwo6NLx83GyCsMeC9vOzQHRWZXknvk4Q6/+5
         lvGCaLkXrz0TbuaNoH+X+OjEPdU45ZstGgJGk198YajFGeHxNNQvFKdOst9ElKmbSCsS
         haML9/9yfUnJW1qN9kVTYLslapQSebsEfyjOWUbw5corUAYsbmQSoN8opbeiNn1bfTGF
         on0qG3/3KiEh7Rh5zT+ke8OJsGQVhf5RhE9nqWjEB9T69+tV7jXkBavEFoShKSltYefI
         Gbkg==
X-Forwarded-Encrypted: i=2; AJvYcCWe5URUUvrn5Yz2kgZLsW4GvommhVatUepqN6l63CmKDCZ4hW0bQmJTiJ2lLSFxFJv4mOthDQ==@lfdr.de
X-Gm-Message-State: AOJu0YxmjFiDDew23ewgzFHgHN8ftWsOVA9/AAm2aibjBjVdjVZfdKwz
	LkN3YBpPDQ4CdO1kRxcilgPWlrMR952phsYavRsnZHaMNB0BCvr8UHWTpASNRfI=
X-Google-Smtp-Source: AGHT+IE9CJHIYxI4Lc1d955HLJGF2mJZ9vdSGVGnjynHji3n0AfuvGvguve91z0VLrGmJ8UnNRZbNA==
X-Received: by 2002:a05:6214:5087:b0:6d3:7a47:2034 with SMTP id 6a1803df08f44-6dd2330b2e4mr843662996d6.3.1736010778050;
        Sat, 04 Jan 2025 09:12:58 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:4384:b0:6dd:3c06:688b with SMTP id
 6a1803df08f44-6dd3c0668bels74028296d6.0.-pod-prod-01-us; Sat, 04 Jan 2025
 09:12:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXT38OCF44+zOmhETVMK0+eHEOTqoDlmMt3dyisl2Vy1gppppKYciPWSNZnfD08UZYO4/yT+67Pl6nhww==@gapps.redhat.com
X-Received: by 2002:a05:6214:e48:b0:6d8:95c9:af2b with SMTP id 6a1803df08f44-6dd2339ff71mr812084096d6.35.1736010776921;
        Sat, 04 Jan 2025 09:12:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736010776; cv=none;
        d=google.com; s=arc-20240605;
        b=GLclxVGTh/2y+93hj/yZm06a5wysrj6G3wscO9qhSg/lkhzsCSv0m8QSCd3bQrn2NC
         kl80QwPWZRinEVlRvGzKDj2KpcK45LgVUkQnDceV+lwNFfYsMGertbJ/82pjsdtkKxJD
         vhQOAlPzt1gvatvkAVQ/reaZHTO7KbvdOxX2xe6G3KwQx8CtecYrw2LcrexaqZXpehsX
         F0r6ElQYf87do5MJREEVErBwpFvE6bTNgCwP4dCfURNB7eZstIkwhWBug9ypjOb+gu0O
         We0skdB3SZzsEx69g+LFO3ZsOWVNOlNgNFfRQBwEgds7zFceWpoPdYj8a/TXlO5gPS0G
         ykBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :delivered-to;
        bh=Wn4laxVnr9mZljYOC6w6S218uMIQtwi8i6IBxesatSs=;
        fh=PaUrAKvKsbJuDLBBP8Li5Dsyl1vzL+QpI8e1fvyvecs=;
        b=GV/1mgfQA6FMJAa0PjNSI6kOkjTXm9qjIpZCFUABgfDy4uj/98Nana4VVLi2x5WfFp
         Fs3EaprhQHIV1eaZGPf6tMSbgsi3y3NIhDhi5UDHCnyeR70PMtMgWP8NcHi4yp3RauS4
         X4sj6bvnU/X1X4Uo1WciTAp8/FZeGI0qVi9DhQJy1B8TO6D0E7tA9wvz/7y8C+xgi4/E
         OOy7b5rszIyl6Cd0Jr8+vZUbqeJBwgoEKNB7gjCAeDUg4xje4fl8ZoRzMYsRHhkITLre
         YZO8FZm4ACBvjMYcSaqARLlAsgvyBAzKRQAXqNCC1aUq1/HKY3849ML9bDfP+ChFvnxb
         IYfQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.174 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd18236362si404021676d6.268.2025.01.04.09.12.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 09:12:56 -0800 (PST)
Received-SPF: pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.174 as permitted sender) client-ip=209.85.219.174;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-621-nTvgHTVrPNWsTb9Zgpjr6A-1; Sat,
 04 Jan 2025 12:12:55 -0500
X-MC-Unique: nTvgHTVrPNWsTb9Zgpjr6A-1
X-Mimecast-MFC-AGG-ID: nTvgHTVrPNWsTb9Zgpjr6A
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 88EC81956088
	for <blinux-list@gapps.redhat.com>; Sat,  4 Jan 2025 17:12:54 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 814031955F4A; Sat,  4 Jan 2025 17:12:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7D2AD1956056
	for <blinux-list@redhat.com>; Sat,  4 Jan 2025 17:12:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EFB701956095
	for <blinux-list@redhat.com>; Sat,  4 Jan 2025 17:12:53 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com
 [209.85.219.174]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-155-wCfUzMLOPUG9fpSm_XCZFQ-1; Sat, 04 Jan 2025 12:12:51 -0500
X-MC-Unique: wCfUzMLOPUG9fpSm_XCZFQ-1
X-Mimecast-MFC-AGG-ID: wCfUzMLOPUG9fpSm_XCZFQ
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e46c6547266so16171688276.3
        for <blinux-list@redhat.com>; Sat, 04 Jan 2025 09:12:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW+GDh7z4qg7Z9/WtKXj6c6CDpWHSzXVqrUi0Gm0wPKfIVbAsbAFgQm6IzpWlFRU5miEYbgyxBCjQ02Jw==@redhat.com
X-Gm-Gg: ASbGncvIN7IICRtu40TxXIYeHlB2jsWzvfl3jf7RZOLwkW9EQuHh4eLkZr0LvZ5cs7j
	93CZ9omddD7+y1rRMk94n4Njlkih5vnoCed/iPg==
X-Received: by 2002:a05:690c:6407:b0:6ef:70fb:4594 with SMTP id
 00721157ae682-6f3f81207e6mr400132247b3.13.1736010770745; Sat, 04 Jan 2025
 09:12:50 -0800 (PST)
MIME-Version: 1.0
References: <7C381AEC-6E41-40CE-B939-087D307EC20B@gmail.com>
 <CAC9uDhYm8i9jbDOGFgviCWbVB+ovZuiPTK9eDTjVUFHKYy3+jQ@mail.gmail.com>
 <28A3646F-4398-4016-A6D2-1D8C7C589129@gmail.com> <CAC9uDhbebJpEcHigN3cTT5ESKaGmOLArYoAx3ihovKO+kyU58w@mail.gmail.com>
 <FF812D55-46D2-4D85-922F-3A5449DA9E89@gmail.com> <CAC9uDhagY=TbOfWmzQR=s3Fn9wvWTYn-w-QfU5HzGTbgqrLm4w@mail.gmail.com>
 <12B91EBD-C1A4-4C87-812B-9859DB7351CF@gmail.com> <CAC9uDhb_FgawxLmca10XD-WesPvNYK7CL_33S=bKCzCFX40wQA@mail.gmail.com>
 <C2DDF28D-F763-43B0-ABD2-4B872D0A814D@gmail.com>
In-Reply-To: <C2DDF28D-F763-43B0-ABD2-4B872D0A814D@gmail.com>
From: jace Kattalakis <khalfang1366@gmail.com>
Date: Sat, 4 Jan 2025 17:12:39 +0000
Message-ID: <CAC9uDhacHPhS9sXHaH16a7hNbeGUaxTpwcwR+WLG3m9RYxB33g@mail.gmail.com>
Subject: Re: k d e desktops and accessibility
To: Daniel Crone <dcrone215@gmail.com>, 
	Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: BEj04sbtrfRIv0on9_V035Hv9JQkoFWElPaTP4rV5bo_1736010771
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OtccUGE60mQ6IcUfG5z_FyiQfskjbcv4eKZgLhayscQ_1736010774
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="00000000000051185d062ae481f9"
X-Original-Sender: KhalFang1366@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of khalfang1366@gmail.com designates 209.85.219.174 as permitted
 sender) smtp.mailfrom=khalfang1366@gmail.com
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

--00000000000051185d062ae481f9
Content-Type: text/plain; charset="UTF-8"

For stack Overflow, the answers are on their own heading, and that's
usually either 2 or 3,though YMMV on that

As for the Whisker menu and opening it with the super key, I don't have the
guide I've used to hand right now,but the basic steps are,open up the
keyboard settings in XFCE, and create the shortcut, then assign the key you
want, after adding the whisker menu to the panel

On Sat, 4 Jan 2025 at 15:59, Daniel Crone <dcrone215@gmail.com> wrote:

> Now that I have installed whiskermenu I will find a way to switch to it.
>
> On Jan 4, 2025, at 05:12, jace Kattalakis <khalfang1366@gmail.com> wrote:
>
> For that, Daniel, you just remove the spaces and it works, there are no
> spaces in the package name. It's just dashes between the words.
>
> Kyle,that's a fair point, and I'll just point out my point about sane
> defaults, and how some desktops are better than others at it though as well
>
> On Fri, 3 Jan 2025 at 20:22, Daniel Crone <dcrone215@gmail.com> wrote:
>
>> After typing
>> sudo apt install xfce4 - whiskermenu -plugin
>> I got the message that package could not be located, and plugin could not
>> be located.
>> What might account for this?
>>
>> On Jan 3, 2025, at 11:40, jace Kattalakis <khalfang1366@gmail.com> wrote:
>>
>> I'm using XFCE from NixOS, so I'm on version 4.20 right now and I've set
>> it up so I can hit the Windows key and get XFCE@s version of a start
>> menu, which they call the Whisker menu. Honestly, for slow, underpowered
>> and old machines, I'd say XFCE is a lot more intuitive to use if you are
>> coming from Windows or Mac. it's a lot easier to tell someone once you got
>> the Whisker menu set up, to hit the Windows key and start typing. FOr
>> context,t the Whisker menu is like the old Windows start menu. You got the
>> programs, then you can search and so on, and hit enter to launch stuff. FOr
>> instance, if I hit Windows, it brings up my favorites by default, so I can
>> just type in fire and it'll find Firefox, and I hit enter on that, or I can
>> type mouse and it'll launch he Mousepad text editor, and so on
>>
>> I'm on NixOS so my way of doing things is different to ,say, Ubuntu or
>> Arch or something though, and this is where Googling your distro and how to
>> do stuff is going to come in handy. I wouldn't recommend NixOS for absolute
>> beginners unless you get a pre made configuration. Instead I'd say stick
>> with your distro and get XFCE how you like and go from there. If you mess
>> up yes you can reinstall, and take notes. Take lots, and lots, of notesa
>>
>> On Fri, 3 Jan 2025 at 17:28, Daniel Crone <dcrone215@gmail.com> wrote:
>>
>>> I am in Tennessee.  Where are you?
>>>
>>> On Jan 3, 2025, at 11:16, jace Kattalakis <khalfang1366@gmail.com>
>>> wrote:
>>>
>>> For Discord, I use the website with Orca and it works well for me. I'll
>>> see how well Zoom works, and yes,but the majority of the Linux communities
>>> I'm in are on Discord though.
>>>
>>> I've not used Zoom since the pandemic actually, and forgot how well it
>>> works with Firefox, but yes, I'd be up for chatting and actually know quite
>>> a few blind Linux people who are far smarter than me about Linux-y things.
>>> I just use NixOS because it works for what I want, I can install, pull down
>>> my config and then just go from there and everything is in one file.
>>> Caveat: It's not the most beginner friendly distro though
>>>
>>> On Fri, 3 Jan 2025 at 17:00, Daniel Crone <dcrone215@gmail.com> wrote:
>>>
>>>> Hello, Daniel Crone writing to you.
>>>> I thank you for your writing about these matters.
>>>> I think it would be good to meet with anyone interested in linux with
>>>> zoom or by telephone, or how you like.
>>>> I had tried discord, but could not figure out how to work it.
>>>> Might you like to chat about linux with me or with anyone?
>>>>
>>>> > On Jan 3, 2025, at 09:27, jace Kattalakis <khalfang1366@gmail.com>
>>>> wrote:
>>>> >
>>>> > Alright here's my thoughts.
>>>> >
>>>> > KDE is good, but, I'm on an underpowered laptop right now so KDE
>>>> sadly isn't an option. They have come a long,long way from 5.2X to 6.2X and
>>>> have made strides. The big one is Konsole is not accessible, and there can
>>>> be too many settings. The other big one is, at least on both my systems,
>>>> KDE Plasma 6.2 has a noticeable lag. has anyone else noticed that, or is it
>>>> just my system being somewhat older?
>>>> >
>>>> > As for desktops I'm using? On my main desktop, KDE, even with the
>>>> lag.It's still good even if I have to use a different terminal
>>>> >
>>>> > On my underpowered laptop, XFCE is blazingly quick, and the thing I
>>>> like about it is, it doesn't use a ton of RAM like KDE or other desktops
>>>> can. I'm running a VM, I've got FF and Discord open and am sitting at 4.8
>>>> of 8 GB RAM used, so just about 5GB.If I had KDE going I'd run out of RAN
>>>> on my cheap laptop. XFCE has similarish Windows defaults. (as does KDE
>>>> Plasma with the exception of alt+Space for the app launcher, something I've
>>>> shamelessly stolen for my XFCE setup because I like alt space for my app
>>>> launchers tyvm.
>>>> >
>>>> > Caveat: I'm running NixOS so YMMV on this, but...here's my
>>>> experience. If you use other distros,your mileage will vary so...get the
>>>> grains of salt ready
>>>> >
>>>> > Mate: Feels clunky after using Plasma and XFCE and gnome. No, I can't
>>>> get the Brisk menu on NixOS, but when I tried it on Arch, it felt okay, not
>>>> amazing and felt slower than XFCE however and had a system tray Orca didn't
>>>> care to read.
>>>> >
>>>> > Gnome 47: It's good but tends to crash a lot on my system and if I'm
>>>> running wayland I need to log out and back in when that happens. Total KB
>>>> freeze and it's a 50/50 shot if hammering Esc wil bring the shell back, and
>>>> I've had Gnome-Terminal alt+f4 on me when Orca is running, and only when,
>>>> Orca is running.
>>>> >
>>>> > KDE Plasma: On Wayland, it works great, just a little laggy and some
>>>> A11Y issues. On X11, it dodsn't pick up my declared keyboard layout and
>>>> reverts to US English but that's likely a NixOS issue so YMMV on that.
>>>> Oddly the lag seemed to start with 6.2 however as far as Orca announcing
>>>> stuff so I'm not sure it's Orca 47.2, Plasma 6.2 or something else.
>>>> Konsole, the default terminal, is not accessible last I checked though, has
>>>> this changed at all? I was told Frameworks 5.9 did a bunch of A11y stuff
>>>> but I can't test that right now.
>>>> >
>>>> >
>>>> > XFCE: Current desktop on my underpowered laptop. It's horrific
>>>> looking, but blind people don't care about that. it's quick but modular but
>>>> has no accessible system tray, but needs you to set things up initially
>>>> (such as the Whisker menu), and needs some tweaks to be decent
>>>>
>>>>
>>>
>>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--00000000000051185d062ae481f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>For stack Overflow, the answers are on their own head=
ing, and that&#39;s usually either 2 or 3,though YMMV on that<br><br></div>=
As for the Whisker menu and opening it with the super key, I don&#39;t have=
 the guide I&#39;ve used to hand right now,but the basic steps are,open up =
the keyboard settings in XFCE, and create the shortcut, then assign the key=
 you want, after adding the whisker menu to the panel<br></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 4 Jan 2025=
 at 15:59, Daniel Crone &lt;<a href=3D"mailto:dcrone215@gmail.com" target=
=3D"_blank">dcrone215@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div>Now that I have installed whiskermenu=
 I will find a way to switch to it.<br id=3D"m_-991645057572693196m_8832728=
861243597321lineBreakAtBeginningOfMessage"><div><br><blockquote type=3D"cit=
e"><div>On Jan 4, 2025, at 05:12, jace Kattalakis &lt;<a href=3D"mailto:kha=
lfang1366@gmail.com" target=3D"_blank">khalfang1366@gmail.com</a>&gt; wrote=
:</div><br><div><div dir=3D"ltr"><div>For that, Daniel, you just remove the=
 spaces and it works, there are no spaces in the package name. It&#39;s jus=
t dashes between the words.<br><br></div>Kyle,that&#39;s a fair point, and =
I&#39;ll just point out my point about sane defaults, and how some desktops=
 are better than others at it though as well<br></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 3 Jan 2025 at 20:22=
, Daniel Crone &lt;<a href=3D"mailto:dcrone215@gmail.com" target=3D"_blank"=
>dcrone215@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div>After typing<div>sudo apt install xfce4 - whiskerm=
enu -plugin</div><div>I got the message that package could not be located, =
and plugin could not be located.</div><div>What might account for this?<br =
id=3D"m_-991645057572693196m_8832728861243597321m_2114177480094120293m_-166=
2388187125742030lineBreakAtBeginningOfMessage"><div><br><blockquote type=3D=
"cite"><div>On Jan 3, 2025, at 11:40, jace Kattalakis &lt;<a href=3D"mailto=
:khalfang1366@gmail.com" target=3D"_blank">khalfang1366@gmail.com</a>&gt; w=
rote:</div><br><div><div dir=3D"ltr">I&#39;m using XFCE from NixOS, so I&#3=
9;m on version 4.20 right now and I&#39;ve set it up so I can hit the Windo=
ws key and get XFCE@s version of a start menu, which they call the Whisker =
menu. Honestly, for slow, underpowered and old machines, I&#39;d say XFCE i=
s a lot more intuitive to use if you are coming from Windows or Mac. it&#39=
;s a lot easier to tell someone once you got the Whisker menu set up, to hi=
t the Windows key and start typing. FOr context,t the Whisker menu is like =
the old Windows start menu. You got the programs, then you can search and s=
o on, and hit enter to launch stuff. FOr instance, if I hit Windows, it bri=
ngs up my favorites by default, so I can just type in fire and it&#39;ll fi=
nd Firefox, and I hit enter on that, or I can type mouse and it&#39;ll laun=
ch he Mousepad text editor, and so on<br><br>I&#39;m on NixOS so my way of =
doing things is different to ,say, Ubuntu or Arch or something though, and =
this is where Googling your distro and how to do stuff is going to come in =
handy. I wouldn&#39;t recommend NixOS for absolute beginners unless you get=
 a pre made configuration. Instead I&#39;d say stick with your distro and g=
et XFCE how you like and go from there. If you mess up yes you can reinstal=
l, and take notes. Take lots, and lots, of notesa<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 3 Jan 2025 a=
t 17:28, Daniel Crone &lt;<a href=3D"mailto:dcrone215@gmail.com" target=3D"=
_blank">dcrone215@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div>I am in Tennessee.=C2=A0 Where are you?<br =
id=3D"m_-991645057572693196m_8832728861243597321m_2114177480094120293m_-166=
2388187125742030m_-6946480201738105104lineBreakAtBeginningOfMessage"><div><=
br><blockquote type=3D"cite"><div>On Jan 3, 2025, at 11:16, jace Kattalakis=
 &lt;<a href=3D"mailto:khalfang1366@gmail.com" target=3D"_blank">khalfang13=
66@gmail.com</a>&gt; wrote:</div><br><div><div dir=3D"ltr"><div>For Discord=
, I use the website with Orca and it works well for me. I&#39;ll see how we=
ll Zoom works, and yes,but the majority of the Linux communities I&#39;m in=
 are on Discord though.<br><br></div>I&#39;ve not used Zoom since the pande=
mic actually, and forgot how well it works with Firefox, but yes, I&#39;d b=
e up for chatting and actually know quite a few blind Linux people who are =
far smarter than me about Linux-y things. I just use NixOS because it works=
 for what I want, I can install, pull down my config and then just go from =
there and everything is in one file. Caveat: It&#39;s not the most beginner=
 friendly distro though<br></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, 3 Jan 2025 at 17:00, Daniel Crone &lt;<a=
 href=3D"mailto:dcrone215@gmail.com" target=3D"_blank">dcrone215@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
ello, Daniel Crone writing to you.<br>
I thank you for your writing about these matters.<br>
I think it would be good to meet with anyone interested in linux with zoom =
or by telephone, or how you like.<br>
I had tried discord, but could not figure out how to work it.<br>
Might you like to chat about linux with me or with anyone?<br>
<br>
&gt; On Jan 3, 2025, at 09:27, jace Kattalakis &lt;<a href=3D"mailto:khalfa=
ng1366@gmail.com" target=3D"_blank">khalfang1366@gmail.com</a>&gt; wrote:<b=
r>
&gt; <br>
&gt; Alright here&#39;s my thoughts.<br>
&gt; <br>
&gt; KDE is good, but, I&#39;m on an underpowered laptop right now so KDE s=
adly isn&#39;t an option. They have come a long,long way from 5.2X to 6.2X =
and have made strides. The big one is Konsole is not accessible, and there =
can be too many settings. The other big one is, at least on both my systems=
, KDE Plasma 6.2 has a noticeable lag. has anyone else noticed that, or is =
it just my system being somewhat older?<br>
&gt; <br>
&gt; As for desktops I&#39;m using? On my main desktop, KDE, even with the =
lag.It&#39;s still good even if I have to use a different terminal<br>
&gt; <br>
&gt; On my underpowered laptop, XFCE is blazingly quick, and the thing I li=
ke about it is, it doesn&#39;t use a ton of RAM like KDE or other desktops =
can. I&#39;m running a VM, I&#39;ve got FF and Discord open and am sitting =
at 4.8 of 8 GB RAM used, so just about 5GB.If I had KDE going I&#39;d run o=
ut of RAN on my cheap laptop. XFCE has similarish Windows defaults. (as doe=
s KDE Plasma with the exception of alt+Space for the app launcher, somethin=
g I&#39;ve shamelessly stolen for my XFCE setup because I like alt space fo=
r my app launchers tyvm.<br>
&gt; <br>
&gt; Caveat: I&#39;m running NixOS so YMMV on this, but...here&#39;s my exp=
erience. If you use other distros,your mileage will vary so...get the grain=
s of salt ready<br>
&gt; <br>
&gt; Mate: Feels clunky after using Plasma and XFCE and gnome. No, I can&#3=
9;t get the Brisk menu on NixOS, but when I tried it on Arch, it felt okay,=
 not amazing and felt slower than XFCE however and had a system tray Orca d=
idn&#39;t care to read.<br>
&gt; <br>
&gt; Gnome 47: It&#39;s good but tends to crash a lot on my system and if I=
&#39;m running wayland I need to log out and back in when that happens. Tot=
al KB freeze and it&#39;s a 50/50 shot if hammering Esc wil bring the shell=
 back, and I&#39;ve had Gnome-Terminal alt+f4 on me when Orca is running, a=
nd only when, Orca is running.<br>
&gt; <br>
&gt; KDE Plasma: On Wayland, it works great, just a little laggy and some A=
11Y issues. On X11, it dodsn&#39;t pick up my declared keyboard layout and =
reverts to US English but that&#39;s likely a NixOS issue so YMMV on that. =
Oddly the lag seemed to start with 6.2 however as far as Orca announcing st=
uff so I&#39;m not sure it&#39;s Orca 47.2, Plasma 6.2 or something else. K=
onsole, the default terminal, is not accessible last I checked though, has =
this changed at all? I was told Frameworks 5.9 did a bunch of A11y stuff bu=
t I can&#39;t test that right now.<br>
&gt; <br>
&gt; <br>
&gt; XFCE: Current desktop on my underpowered laptop. It&#39;s horrific loo=
king, but blind people don&#39;t care about that. it&#39;s quick but modula=
r but has no accessible system tray, but needs you to set things up initial=
ly (such as the Whisker menu), and needs some tweaks to be decent<br>
<br>
</blockquote></div>
</div></blockquote></div><br></div></blockquote></div>
</div></blockquote></div><br></div></div></blockquote></div>
</div></blockquote></div><br></div></blockquote></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--00000000000051185d062ae481f9--

