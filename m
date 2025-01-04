Return-Path: <blinux-list+bncBCNLZ3P6ZIDRBOFP4S5QMGQEJFKPEQA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BFEA01411
	for <lists+blinux-list@lfdr.de>; Sat,  4 Jan 2025 12:12:58 +0100 (CET)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-e3fea893dc5sf27971933276.1
        for <lists+blinux-list@lfdr.de>; Sat, 04 Jan 2025 03:12:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735989177; cv=pass;
        d=google.com; s=arc-20240605;
        b=D+CkSdoTNP32Y4d+0Lrc+pwN5Gjp2K5EAeT71RYAntEyKs1I9VQFCRvMD/OOrM5z0G
         w8AP4g8T5iRzNCpTq32darBw5f8KSasyVCLbMecyK/zVBvu8+bRn+QpFySUmU/RzxhwY
         +EN1AeNDTSlwgvzYQdSfTCHwn+y748RUHQFHgoIvbe1mQWez7ll/chillS1pBonISdpx
         zMDPRfgwOgWtDxJBcjkurcqh4U0DBicq4Fx6qBOs8BQE2AHuRdDHmkVi1p851TOe15Kd
         MVlcMfvr7ePF2V2w3+9XgaFgaN+HV0pCnWYSHo5NNjmvOY8LMU4xQL6lZFxNshcAh2/r
         jAzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:delivered-to;
        bh=4C8nzOgc2pEcW47vFlc5S/jGLsermE+3mpp6cryGI58=;
        fh=CWuclRIAwEJxIYLKUdVNKB7s7lgoA8bgAiuNn49zpxE=;
        b=U+PqbpHgX8fkdQKnn9zT+6juPnX8S7wDFSZ/UzLgr7zVZLWLWvb8FehHJZU9DteNme
         UA+rQbD5hQg4ETFJEZm5g4R+jUSC0GKM3zJ2M3rdfTFGOoBtCdXLLuk//eq60WPzxR7/
         S/Q6hbSJfzNBiFgWyu2TnMwwo7YVIQ3/+Ljfd4gfyKx/9bZU2iGrWBAd0O+Pmxf8Dvi9
         3pAgVZg7I/vysNB2/AUVazYBDvRcqGDG1EAzgizIe0FnmX88xWwjzZlRnPZLGv1HWGVH
         mYfVpcn7Zm9GJv6P2bQeWipylKt1+eyuWO89zORw1c4iUgRxgKKvQb3vmntFHYwGL/Lr
         +cZg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.177 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735989177; x=1736593977;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4C8nzOgc2pEcW47vFlc5S/jGLsermE+3mpp6cryGI58=;
        b=l+JL+GoZhQD17RR0WWJDdEKxX7n2bklm99e4m2FCxbZADdlymJGEWuNyKt5uOVhsEF
         FQ8HySXJC4Xba8xLBK1Vm5sSa6tYa+NQ86FUsh551JIXlnopuHkKkYK8tPeiuyxlww9y
         yPF5DjiLQkAnFdRksU40AFaq1wanWmm7HFJ3y90u/GQKBWmho33sryphs1IoVroT1U1E
         83qLcKADENWih2eLFyoYarONTL768N8TYXCfpl0whEw2EH09+Jjs0F2jzMkDmBs9y6EO
         m2LBnXjS4UOdK57V7CLrgHYD83va1ZXM97InQnnmG5KYaZTGLOs5ssHFR0rtVC9KAZrU
         hGHw==
X-Forwarded-Encrypted: i=2; AJvYcCVL5MYiMATVeBs+3WURRFI4e2gegxOCvWBfQlRL3UvoF7Rtq2zZktBFDpA9/wOSA9LxRUC/iA==@lfdr.de
X-Gm-Message-State: AOJu0YzIWhNaEB0THTtAjVcHsoiA+FWVPYl9dNtAdSViFe+j12HZ9gIw
	rrvIt4BDD+9Muu4jkRuqhqNd9LHC2lSNu7inlrxONKQkI34HmtR+8K4gxxVkqU0=
X-Google-Smtp-Source: AGHT+IExxUsikghLqbMo3XwCEKMnXDE2QRD4DP1Bduwxb9RidtXP97sIbAVJuqFQDlFxIo6btsZ4nQ==
X-Received: by 2002:a05:6902:15cb:b0:e38:b399:590b with SMTP id 3f1490d57ef6-e538ccaceb3mr39148787276.2.1735989176651;
        Sat, 04 Jan 2025 03:12:56 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:dfd2:0:b0:e38:9c46:1f8c with SMTP id 3f1490d57ef6-e537601d460ls3649628276.1.-pod-prod-00-us;
 Sat, 04 Jan 2025 03:12:55 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVwrq+jP97tKYXABbU21Gl2aCYKdhW+uEjUNJCZoN0Fi/TiYsjVzTY+uoDRwO0rbNja+k6QSe7qBTmJig==@gapps.redhat.com
X-Received: by 2002:a05:690c:9a8b:b0:6ef:e572:cd6f with SMTP id 00721157ae682-6f3e2a87259mr391149937b3.7.1735989175450;
        Sat, 04 Jan 2025 03:12:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735989175; cv=none;
        d=google.com; s=arc-20240605;
        b=ghboWdruEWGfwGidD+6yPolhsv5nRZXEWW09TbcNRbYO5sYqrNZwGlqA7yoYlDPcv9
         sdK0ZNtTVdtnxO9yUVkhIVrz9KFKPivE1v6wMK6rBI3lpwUn9SA07H9aC5Zkeis1ViIz
         U5rsooxINWVNrsjuUqFdhlIm8m7t5NctbMIFCCeBemwAUD3UOg4AcoPZ/EURDNHMc/+q
         1OoJO7/l+q3RDETRXYJh0i6IXD3s24U+Lgdw15Vwgo22MIkDRX8XUoD1w/Mc79CxEH2B
         GFRTECNH8GqWbNS08ABKD3xyJQvz6oyFQwrFDRHVCpq5mFfjLyJ+v0pxILNw67LPBsUV
         vCmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :delivered-to;
        bh=rh7Ohbpmjbze3i+ULrRpmWHX21P0Hks9HBb6IbChKo4=;
        fh=euOXZalpAGKZaEFuwMbu5xo09SHygldMOAo1yWuPbco=;
        b=ER7RV2/SNJ2A0xl5E+oB7owPS9B0BJ3Qzm47eEn6H1P+FJW/xi+CrE/g5clxlbhj7d
         /UcejC2U6v4tmG2H+iM9ze1higVRzIyr/Fr0RMLCiObs7VAAQpilZcPZI6dupFNr3MUo
         rHZ0sHFNx6DMiArxrJev8Hyk68SHQBQyIfF0Vo1qjR5PHzZFZBB1oDTK3afczmDBaMKR
         329FMArRj1d0qvPeOG4ndOxQ1J/NQooTsIpGro/zr5OEIoBL8VaS1wXveisZJpRK5A4g
         lCGV4k7PqI4p5BrcT8PX/UJKndEJdt1X2e2aBFiFl8CJ2KGdFAh5J9+V3heNt79SmHao
         qHWg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.177 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 00721157ae682-6f3e78b13b8si224324777b3.506.2025.01.04.03.12.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 03:12:55 -0800 (PST)
Received-SPF: pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.177 as permitted sender) client-ip=209.85.219.177;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-552-r-6WIoKoNF2om4mhdp2zAA-1; Sat,
 04 Jan 2025 06:12:53 -0500
X-MC-Unique: r-6WIoKoNF2om4mhdp2zAA-1
X-Mimecast-MFC-AGG-ID: r-6WIoKoNF2om4mhdp2zAA
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EF4CA19560AA
	for <blinux-list@gapps.redhat.com>; Sat,  4 Jan 2025 11:12:52 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E9247195608A; Sat,  4 Jan 2025 11:12:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E608F1956088
	for <blinux-list@redhat.com>; Sat,  4 Jan 2025 11:12:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5222019560AA
	for <blinux-list@redhat.com>; Sat,  4 Jan 2025 11:12:52 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com
 [209.85.219.177]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-45-rhwo4gGFMiuAucBmF-sh-A-1; Sat, 04 Jan 2025 06:12:48 -0500
X-MC-Unique: rhwo4gGFMiuAucBmF-sh-A-1
X-Mimecast-MFC-AGG-ID: rhwo4gGFMiuAucBmF-sh-A
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e39779a268bso15666321276.1
        for <blinux-list@redhat.com>; Sat, 04 Jan 2025 03:12:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWUTS2FjEGRZcAK1eiHd0gwDwQTLYS7iz+c3VOCVKS3xvjcd+r7iWu3Y1kNLFfDCIFQE/Ton0woyh3gkA==@redhat.com
X-Gm-Gg: ASbGncvWdEdoX3MVbAiw0Q7en9wvdDLQoOu8+75EPFTJDHLJr5huzIaJX7fewFaL4pI
	7GCbZLkcE6/Gm+4qwqRRzJO+KWvXDNhAyfLK4vQ==
X-Received: by 2002:a05:690c:4509:b0:6e2:2684:7f62 with SMTP id
 00721157ae682-6f3e2a874d1mr381880087b3.8.1735989167913; Sat, 04 Jan 2025
 03:12:47 -0800 (PST)
MIME-Version: 1.0
References: <7C381AEC-6E41-40CE-B939-087D307EC20B@gmail.com>
 <CAC9uDhYm8i9jbDOGFgviCWbVB+ovZuiPTK9eDTjVUFHKYy3+jQ@mail.gmail.com>
 <28A3646F-4398-4016-A6D2-1D8C7C589129@gmail.com> <CAC9uDhbebJpEcHigN3cTT5ESKaGmOLArYoAx3ihovKO+kyU58w@mail.gmail.com>
 <FF812D55-46D2-4D85-922F-3A5449DA9E89@gmail.com> <CAC9uDhagY=TbOfWmzQR=s3Fn9wvWTYn-w-QfU5HzGTbgqrLm4w@mail.gmail.com>
 <12B91EBD-C1A4-4C87-812B-9859DB7351CF@gmail.com>
In-Reply-To: <12B91EBD-C1A4-4C87-812B-9859DB7351CF@gmail.com>
From: jace Kattalakis <khalfang1366@gmail.com>
Date: Sat, 4 Jan 2025 11:12:37 +0000
Message-ID: <CAC9uDhb_FgawxLmca10XD-WesPvNYK7CL_33S=bKCzCFX40wQA@mail.gmail.com>
Subject: Re: k d e desktops and accessibility
To: Daniel Crone <dcrone215@gmail.com>, 
	Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: hcHnottOayvBX_mWjEVxrlx69M00Gxka9NkgqbkCj_s_1735989168
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RiF7nKWRD1eTRz9tLdgj9gVYw_BvOgukxMLd7VghFb8_1735989173
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000b000bd062adf790b"
X-Original-Sender: KhalFang1366@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of khalfang1366@gmail.com designates 209.85.219.177 as permitted
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

--000000000000b000bd062adf790b
Content-Type: text/plain; charset="UTF-8"

For that, Daniel, you just remove the spaces and it works, there are no
spaces in the package name. It's just dashes between the words.

Kyle,that's a fair point, and I'll just point out my point about sane
defaults, and how some desktops are better than others at it though as well

On Fri, 3 Jan 2025 at 20:22, Daniel Crone <dcrone215@gmail.com> wrote:

> After typing
> sudo apt install xfce4 - whiskermenu -plugin
> I got the message that package could not be located, and plugin could not
> be located.
> What might account for this?
>
> On Jan 3, 2025, at 11:40, jace Kattalakis <khalfang1366@gmail.com> wrote:
>
> I'm using XFCE from NixOS, so I'm on version 4.20 right now and I've set
> it up so I can hit the Windows key and get XFCE@s version of a start
> menu, which they call the Whisker menu. Honestly, for slow, underpowered
> and old machines, I'd say XFCE is a lot more intuitive to use if you are
> coming from Windows or Mac. it's a lot easier to tell someone once you got
> the Whisker menu set up, to hit the Windows key and start typing. FOr
> context,t the Whisker menu is like the old Windows start menu. You got the
> programs, then you can search and so on, and hit enter to launch stuff. FOr
> instance, if I hit Windows, it brings up my favorites by default, so I can
> just type in fire and it'll find Firefox, and I hit enter on that, or I can
> type mouse and it'll launch he Mousepad text editor, and so on
>
> I'm on NixOS so my way of doing things is different to ,say, Ubuntu or
> Arch or something though, and this is where Googling your distro and how to
> do stuff is going to come in handy. I wouldn't recommend NixOS for absolute
> beginners unless you get a pre made configuration. Instead I'd say stick
> with your distro and get XFCE how you like and go from there. If you mess
> up yes you can reinstall, and take notes. Take lots, and lots, of notesa
>
> On Fri, 3 Jan 2025 at 17:28, Daniel Crone <dcrone215@gmail.com> wrote:
>
>> I am in Tennessee.  Where are you?
>>
>> On Jan 3, 2025, at 11:16, jace Kattalakis <khalfang1366@gmail.com> wrote:
>>
>> For Discord, I use the website with Orca and it works well for me. I'll
>> see how well Zoom works, and yes,but the majority of the Linux communities
>> I'm in are on Discord though.
>>
>> I've not used Zoom since the pandemic actually, and forgot how well it
>> works with Firefox, but yes, I'd be up for chatting and actually know quite
>> a few blind Linux people who are far smarter than me about Linux-y things.
>> I just use NixOS because it works for what I want, I can install, pull down
>> my config and then just go from there and everything is in one file.
>> Caveat: It's not the most beginner friendly distro though
>>
>> On Fri, 3 Jan 2025 at 17:00, Daniel Crone <dcrone215@gmail.com> wrote:
>>
>>> Hello, Daniel Crone writing to you.
>>> I thank you for your writing about these matters.
>>> I think it would be good to meet with anyone interested in linux with
>>> zoom or by telephone, or how you like.
>>> I had tried discord, but could not figure out how to work it.
>>> Might you like to chat about linux with me or with anyone?
>>>
>>> > On Jan 3, 2025, at 09:27, jace Kattalakis <khalfang1366@gmail.com>
>>> wrote:
>>> >
>>> > Alright here's my thoughts.
>>> >
>>> > KDE is good, but, I'm on an underpowered laptop right now so KDE sadly
>>> isn't an option. They have come a long,long way from 5.2X to 6.2X and have
>>> made strides. The big one is Konsole is not accessible, and there can be
>>> too many settings. The other big one is, at least on both my systems, KDE
>>> Plasma 6.2 has a noticeable lag. has anyone else noticed that, or is it
>>> just my system being somewhat older?
>>> >
>>> > As for desktops I'm using? On my main desktop, KDE, even with the
>>> lag.It's still good even if I have to use a different terminal
>>> >
>>> > On my underpowered laptop, XFCE is blazingly quick, and the thing I
>>> like about it is, it doesn't use a ton of RAM like KDE or other desktops
>>> can. I'm running a VM, I've got FF and Discord open and am sitting at 4.8
>>> of 8 GB RAM used, so just about 5GB.If I had KDE going I'd run out of RAN
>>> on my cheap laptop. XFCE has similarish Windows defaults. (as does KDE
>>> Plasma with the exception of alt+Space for the app launcher, something I've
>>> shamelessly stolen for my XFCE setup because I like alt space for my app
>>> launchers tyvm.
>>> >
>>> > Caveat: I'm running NixOS so YMMV on this, but...here's my experience.
>>> If you use other distros,your mileage will vary so...get the grains of salt
>>> ready
>>> >
>>> > Mate: Feels clunky after using Plasma and XFCE and gnome. No, I can't
>>> get the Brisk menu on NixOS, but when I tried it on Arch, it felt okay, not
>>> amazing and felt slower than XFCE however and had a system tray Orca didn't
>>> care to read.
>>> >
>>> > Gnome 47: It's good but tends to crash a lot on my system and if I'm
>>> running wayland I need to log out and back in when that happens. Total KB
>>> freeze and it's a 50/50 shot if hammering Esc wil bring the shell back, and
>>> I've had Gnome-Terminal alt+f4 on me when Orca is running, and only when,
>>> Orca is running.
>>> >
>>> > KDE Plasma: On Wayland, it works great, just a little laggy and some
>>> A11Y issues. On X11, it dodsn't pick up my declared keyboard layout and
>>> reverts to US English but that's likely a NixOS issue so YMMV on that.
>>> Oddly the lag seemed to start with 6.2 however as far as Orca announcing
>>> stuff so I'm not sure it's Orca 47.2, Plasma 6.2 or something else.
>>> Konsole, the default terminal, is not accessible last I checked though, has
>>> this changed at all? I was told Frameworks 5.9 did a bunch of A11y stuff
>>> but I can't test that right now.
>>> >
>>> >
>>> > XFCE: Current desktop on my underpowered laptop. It's horrific
>>> looking, but blind people don't care about that. it's quick but modular but
>>> has no accessible system tray, but needs you to set things up initially
>>> (such as the Whisker menu), and needs some tweaks to be decent
>>>
>>>
>>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--000000000000b000bd062adf790b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>For that, Daniel, you just remove the spaces and it w=
orks, there are no spaces in the package name. It&#39;s just dashes between=
 the words.<br><br></div>Kyle,that&#39;s a fair point, and I&#39;ll just po=
int out my point about sane defaults, and how some desktops are better than=
 others at it though as well<br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, 3 Jan 2025 at 20:22, Daniel Crone &=
lt;<a href=3D"mailto:dcrone215@gmail.com" target=3D"_blank">dcrone215@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div>After typing<div>sudo apt install xfce4 - whiskermenu -plugin</div=
><div>I got the message that package could not be located, and plugin could=
 not be located.</div><div>What might account for this?<br id=3D"m_21141774=
80094120293m_-1662388187125742030lineBreakAtBeginningOfMessage"><div><br><b=
lockquote type=3D"cite"><div>On Jan 3, 2025, at 11:40, jace Kattalakis &lt;=
<a href=3D"mailto:khalfang1366@gmail.com" target=3D"_blank">khalfang1366@gm=
ail.com</a>&gt; wrote:</div><br><div><div dir=3D"ltr">I&#39;m using XFCE fr=
om NixOS, so I&#39;m on version 4.20 right now and I&#39;ve set it up so I =
can hit the Windows key and get XFCE@s version of a start menu, which they =
call the Whisker menu. Honestly, for slow, underpowered and old machines, I=
&#39;d say XFCE is a lot more intuitive to use if you are coming from Windo=
ws or Mac. it&#39;s a lot easier to tell someone once you got the Whisker m=
enu set up, to hit the Windows key and start typing. FOr context,t the Whis=
ker menu is like the old Windows start menu. You got the programs, then you=
 can search and so on, and hit enter to launch stuff. FOr instance, if I hi=
t Windows, it brings up my favorites by default, so I can just type in fire=
 and it&#39;ll find Firefox, and I hit enter on that, or I can type mouse a=
nd it&#39;ll launch he Mousepad text editor, and so on<br><br>I&#39;m on Ni=
xOS so my way of doing things is different to ,say, Ubuntu or Arch or somet=
hing though, and this is where Googling your distro and how to do stuff is =
going to come in handy. I wouldn&#39;t recommend NixOS for absolute beginne=
rs unless you get a pre made configuration. Instead I&#39;d say stick with =
your distro and get XFCE how you like and go from there. If you mess up yes=
 you can reinstall, and take notes. Take lots, and lots, of notesa<br></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, 3 Jan 2025 at 17:28, Daniel Crone &lt;<a href=3D"mailto:dcrone215@gmail.=
com" target=3D"_blank">dcrone215@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div>I am in Tennessee.=C2=A0 Whe=
re are you?<br id=3D"m_2114177480094120293m_-1662388187125742030m_-69464802=
01738105104lineBreakAtBeginningOfMessage"><div><br><blockquote type=3D"cite=
"><div>On Jan 3, 2025, at 11:16, jace Kattalakis &lt;<a href=3D"mailto:khal=
fang1366@gmail.com" target=3D"_blank">khalfang1366@gmail.com</a>&gt; wrote:=
</div><br><div><div dir=3D"ltr"><div>For Discord, I use the website with Or=
ca and it works well for me. I&#39;ll see how well Zoom works, and yes,but =
the majority of the Linux communities I&#39;m in are on Discord though.<br>=
<br></div>I&#39;ve not used Zoom since the pandemic actually, and forgot ho=
w well it works with Firefox, but yes, I&#39;d be up for chatting and actua=
lly know quite a few blind Linux people who are far smarter than me about L=
inux-y things. I just use NixOS because it works for what I want, I can ins=
tall, pull down my config and then just go from there and everything is in =
one file. Caveat: It&#39;s not the most beginner friendly distro though<br>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, 3 Jan 2025 at 17:00, Daniel Crone &lt;<a href=3D"mailto:dcrone215@g=
mail.com" target=3D"_blank">dcrone215@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Hello, Daniel Crone writing =
to you.<br>
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

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000b000bd062adf790b--

