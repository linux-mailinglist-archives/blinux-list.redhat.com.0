Return-Path: <blinux-list+bncBCM2V5WE3MDBBHGDQKVAMGQE4FA3ZPQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2927DC6AD
	for <lists+blinux-list@lfdr.de>; Tue, 31 Oct 2023 07:41:33 +0100 (CET)
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-32f8cb825c5sf605302f8f.2
        for <lists+blinux-list@lfdr.de>; Mon, 30 Oct 2023 23:41:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698734493; cv=pass;
        d=google.com; s=arc-20160816;
        b=PLZLu3uLJ1EvCF5khKuqMdFalCTaXN1Kj9KUZ4EoVbmVYa2ltcqDQs3ITuVF2bxk80
         8jUFhWjsrt7WZewNao3ck3ALDuAjG0nzkhj/tTQj0/G/SUXL0sXlHYEvnacnLvyGOLIo
         jgcS/G1tsoyekPeueN4EBWZ7GaAc+OJAqL5M2vtdhthtBY9v+BrQbuBQdoRMcTx2UVC6
         fzfm6pKqcwXxO/fwhNk695mS8nNawVJdbGrlP8AInzWlgPDOX37l/Ip7aifCwuD6mIaq
         +bZImrQx1ag2tjTsIe5lhkAWUz9dxQBcrAHQCry8YONlXsZ0FA+GbJAbYSsrNOLbryzF
         y/Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=ZSvhMGK5P9R2ya3S2jQ215yBAbBdp4QMd9/0VCTQ9Dg=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=N/79Uy7S/qZWovFVRCCiETs99ZCVuKH9arDb0udu/mBB7bbiegl7z5Fw9HOqv6OCVy
         w1mcHMr2HRK6Dv8UW3Tdq2qzb5rDOR9VTfPqPVDhaAvhuzrIrWRuilp/KUftwPKkhQsg
         mQN9LexRhj1g4y737JYw/IBu1M0x9UU+0md4w8AgdavH5sC9g1CL+g5mSkzXzWMBboI3
         vYa6veIY5ekJ29Yuqa0X8toiOGf94VpMYeBGDKGrg5j3V6JlQL3Afci5BkRBDWTkdEy0
         iTlJV0zANdQLR4RYm4cm5/ZkSyOGC/5fxzilMHDg+E+tIrohaBLJvhzIdc2udUG87fXb
         KNUg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698734493; x=1699339293;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZSvhMGK5P9R2ya3S2jQ215yBAbBdp4QMd9/0VCTQ9Dg=;
        b=OJbdPN7qaVEv5y6NELMdpOX9QmS+sAfJ+AlhW0p+LaxNFn7pDj/Ra06OXnAxfaBbue
         Bps89t4nnEmmL8WACCEpj10QiUWweVwUxmGDiZS/eNIMz4Cxte3OQwTEV9RJUo+tbAUo
         a4PTqOkeMMbt/DLxQXAK1v8205sfhY6DW3rdfapea1hUXpIoQEVwQrJOiw8jXdBvz6UD
         N+KMD7Ax32S6rX0BHRq28QHEpRn7xXLnWnvWZ6ctTSqfhFXvWUBWLhQr332lSCXfcGwe
         KO5z7K/uF4umjZNyLDeWMubpk0QmSr6T/Abol3cTRfpfC3PzZj19JRup2KJTEKJdHF3e
         lo3A==
X-Gm-Message-State: AOJu0YzE0T+8ptqk7dzDu1DinKBHI4mDMckaEgWeMsS2stZslY3uUEK/
	316IlvL7jdaH4LaxpIYZg2tDKQ==
X-Google-Smtp-Source: AGHT+IE8nvaH1QPEOBVQLvWKiIVtrL6UvgGXQPfGFzLJK0TfHaDrhd9FpllIiwkbzR0QwHiKTD5ojg==
X-Received: by 2002:a5d:5687:0:b0:32d:bafd:809f with SMTP id f7-20020a5d5687000000b0032dbafd809fmr8149250wrv.70.1698734493081;
        Mon, 30 Oct 2023 23:41:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6000:402a:b0:31f:a870:d4b8 with SMTP id
 cp42-20020a056000402a00b0031fa870d4b8ls1711056wrb.2.-pod-prod-04-eu; Mon, 30
 Oct 2023 23:41:31 -0700 (PDT)
X-Received: by 2002:adf:e44a:0:b0:32d:a2d7:ae88 with SMTP id t10-20020adfe44a000000b0032da2d7ae88mr7477465wrm.43.1698734491201;
        Mon, 30 Oct 2023 23:41:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698734491; cv=none;
        d=google.com; s=arc-20160816;
        b=p2NqPTqOG1K5gQKC97la+DYi/2iFtnXYmRFUax0Z/C93EPACu0CLBhw0NYfEIYmKQF
         F4rFOd6CYHZfCOJNMBPsztk0T6GDSp0RjtQZ+NsqqFh2ZQF4VQyOzEh3SFz9Xgmv4vyn
         nhSwIJY1MJ24D5nJqr1O/LqRx1fuYZFYS4LXKnUWulrNgirhB9ACbsIcZ393sZ5Selk2
         LddmfHtzoyGfr8eO/NxgOF/h+a1maqlf0qWnzt6Eqd60phDvS0DKaVpOEaSAnadzvdfE
         Ba+mJdpZYWo+bb7jmVPqWrBFyHGY+mOU/qD+QoL5T4Uas9OC3sIbImKPGVSq+VaY87C9
         pZyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=k/141TTCt5GslI7ygdXJDB3jRPke4HoLbgr04R0A8qA=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=zIR02fZJrgqRNpJI1qSi8Z+u2L48WPbtjUkWqO7i1NGsacb6W4q5EW1mcFZC5RrCxX
         Bz9oP6I/IOvLKVpYzup+JSlQCM+boeP6Nlecs4OkdTdrC4/oDHWSzB0LpoW6FN+5rWYH
         QhTLZbMKI0pwIluQAu/f09yYbEFzaby153dgwxHLcVJPsJDqX0vwItybhw+ZIPjXPb+a
         wppE20+LLwXReqLGgW6Uzs58Q0Xf8Mdzfligjy+J2TOlVpDhY6I3woSRDt8tD+fqJ79R
         ONP2aKS+SBQ1597Ua2E2swxNTksvP/ym2eF2W4Ee9zfoRlp4t/vSmeSqTyz4pB3xWWyF
         v3EQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id j8-20020a5d4528000000b0032d835731afsi399121wra.351.2023.10.30.23.41.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 23:41:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) client-ip=185.70.41.104;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-350-uSksG96IOambEARO06MRvQ-1; Tue,
 31 Oct 2023 02:41:29 -0400
X-MC-Unique: uSksG96IOambEARO06MRvQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E469038143A1
	for <blinux-list@gapps.redhat.com>; Tue, 31 Oct 2023 06:41:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E12791121307; Tue, 31 Oct 2023 06:41:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D91591121306
	for <blinux-list@redhat.com>; Tue, 31 Oct 2023 06:41:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B360A185A783
	for <blinux-list@redhat.com>; Tue, 31 Oct 2023 06:41:28 +0000 (UTC)
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-115-ZVrKG8nTMcKYiWQmD6DXCg-1; Tue, 31 Oct 2023 02:41:16 -0400
X-MC-Unique: ZVrKG8nTMcKYiWQmD6DXCg-1
Date: Tue, 31 Oct 2023 06:41:05 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Troubleshooting sound.
Message-ID: <bda4860b-0d93-46d1-8c9d-6441df47137c@protonmail.com>
In-Reply-To: <CAO2sX33wt=DB3kwzZ02BcpprprGY2oUvV9a4+5fa2fF-NacSqQ@mail.gmail.com>
References: <CAO2sX33wt=DB3kwzZ02BcpprprGY2oUvV9a4+5fa2fF-NacSqQ@mail.gmail.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

Hello,

that's weird, failing in middle of nothing, unless there was some kind=20
of update happening, it does sound more like a hardware failure.


Perhaps you may want to consider booting up a live Ubuntu session to see=20
if the sound behaves differently there? If the installation media=20
produces the same behavior as the installed OS, it's very likely a=20
hardware problem.


As for BT speakers, bluetoothctl is a very simple, straight-forward and=20
efficient terminal utility I make regular use of when pairing my BT=20
headphones to Linux devices, because the GUI interfaces usually don't=20
work for various reasons.


You just do:

sudo bluetoothctl

and use interactively, there is a help command that will list all=20
available commands, the typical pairing procedure is:

1. Scan to find out the MAC address of the device

2. Pair with the device

3. Trust the device (this will make your PC autoconnect when the=20
speakers are spotted)

4. Connect to the device


For more detailed instructions, search one of the how to turn Raspberry=20
pi into speakers tutorial, they usually contain the command sequence, or=20
ask chatGPT, it could give you the relevant advice.

It's one of the things I'm doing once per few years, and never remember=20
the exact commands.


Best regards


Rastislav


D=C5=88a 30. 10. 2023 o 21:26 Jeffery Mewtamer nap=C3=ADsal(a):
> Okay, so last night, the 3.5 mm audiojack on the front of my Desktop
> cut out in the middle of a youTube video and several reboots haven't
> fixed sound coming out of it though I can still hear the faint crackle
> that sometimes accompanies plugging/unplugging wired earphones.
>
> I've also tried plugging into the 3.5mm audiojack on the back of my
> desktop, and get sound from none of them.
>
> I have a midi controller I recently discovered by accident can be used
> as a USB speaker and it has an 3.5mm audiojack I currently have my
> earphones plugged into, so I'm not completely without sound, but this
> alternative has a few issues:
>
> 1. While YouTube videos and media  played from my SDSD or harddrive
> sound normal, for some reason, this setup introduces, I'm not sure if
> distortion is the right word, but what Orca is making espeak-ng say
> sounds off like the volume has been cranked up to high, but it happens
> even at low volume.
>
> 2. Every few minutes, sound cuts out and I have to unplug and replug
> the USB cable to get it back... and how often I need to do this seems
> random and is sometimes under a minute(I've had to unplug and replug
> the cable twice during the typing of this numbered point).
>
> 3. The Midi controller, even when acting as a USB speaker, also acts
> like a stand alone music synth, and it's easy for it to make noise
> that drowns out what's coming from my desktop.
>
> For what it's worth, I'm Running Debian with LXDE, installed from the
> Debian 12.0.0 netinst and mostly upgraded to Debian Testing(I am
> running Orca 43 because Orca 44/45 breaks one of my apps'
> accessibility) and use Alsamixer in LXterminal for volume control.
>
> Anyone have any idea how to trouble shoot the 3.5mm audiojacks to
> either determine its a software issue and fix it or determine its a
> hardware issue(which I really hope it isn't, I just bought this
> desktop earlier this year and it isn't even paid off), or at least how
> to fix the TTS distortion or intermittent sound using the midi
> controller as a USB speaker... I do have an Amazon Echo that can be
> used as a Bluetooth Speaker, but I don't even know how to pair my PC
> to any bluetooth device.
>
> --
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

