Return-Path: <blinux-list+bncBCM2V5WE3MDBBO7KY2VAMGQEY7AIOYY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 989467E967A
	for <lists+blinux-list@lfdr.de>; Mon, 13 Nov 2023 06:33:49 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cbb2970f4sf47460151cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 12 Nov 2023 21:33:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699853628; cv=pass;
        d=google.com; s=arc-20160816;
        b=daRLzLCZCo8yl9QormHL2Z9zdwW87uQWzYWkXnDx6j/WbOcSl9GKfkBEFJq1mYvwUB
         6kH30ziExluHaX4ulOuTKVQrohZ/vcrYC60WYiHIM4wtkrB7T1dWHQ/oZo0JhBTefGAL
         Tg5/OWhH89cKXCDX7MSHP7rhqMnT5S7rXQJfxrHHGwHmixbtRWMOgyWU+GprE4AfesdO
         w9L3PCE5ITOeJMo/mU7dLFKOqYmwgdTNqMe9AaFxHCjx3SdUrqrydiU05S9uKowCT42u
         DDqXfaNhJERHrknn+5QIjbW3KHUrf5s2NBvf4jt1LDtktL6zoZYQxBFet3qSQJikjzir
         jMVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :message-id:subject:from:to:date:delivered-to;
        bh=XNKMPQOi6QOt3A8rFwP98Tz1eZ3vWfztlp8QV6q/GBk=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=PeNiQQbb0X2CuginRrlB66TdEoRsHeTwoBmq1gFUCXnD4WD5LSsE3m4zeCFj4JxT+4
         PGKOGyu1WckaEu38Dcep9vOF//kSAHmsMeAkq/iS3i7JVbSpju4IQuMdyvxvbHmOPuDK
         5D8xDoxrh7mA0LWRoU2chuDdQqMugG6LVIcFnj8Wh+l9INGb862x3Gv4uBmBBfyYrIrA
         yWKNBAV+wTu8jRR+RgSbjQSJbZsHOe/hKnmRFr201Rc7aDT8A4r8jtyyUnzeHcjaPn54
         f8wJFYgUfXbEQhPFu+uVRqFQQAj74J+BExZqg6Xw15LH3KGMenufkKrHAFCKzigBLXj8
         ETIg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699853628; x=1700458428;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XNKMPQOi6QOt3A8rFwP98Tz1eZ3vWfztlp8QV6q/GBk=;
        b=SAdGht0vWUku43BgqLgWqtserFiAL2Fymc3yNMzP/MPhP6IGxKMj6P2Wt76ZIU5BTL
         635WjKeJABW0lL5Zdn6S7nc0h0BpV3rZ5eH7V/4l8yYjwzCQ4A1UzneJxU2h6KisXajh
         rRer35zo03ULrpbb4AlEt5UH8dr5rNK9CTbtUYbkF0NB9+YZOmjRX89M97k97fQWdzq2
         W0wPYSK6Gzxytn4Phe30qWr8opK/+2A3qbyWPdERZNzAq2Hda6tB16/Vx1Li3ndnfk+A
         iX+NX7xKOHn5yf2PHmvLFJDntNYiaK2P6e3bD46WG/On/5L0kS74AkoH2S0nSrYizV3f
         SinQ==
X-Gm-Message-State: AOJu0YxnxhdGcgUErY34ep+AQKuCPA/FbxRZAA1j/0WaLoRCNe/Ld4x5
	1t3hby1jvZ0ke45EUlHpDX0wGQ==
X-Google-Smtp-Source: AGHT+IHAwfp6rY/qCOL+8MTKtxU98Fvt4pRQ0womWF6FDwEhVRkFya180YJF+feZ/TWWVU1b2rIAHg==
X-Received: by 2002:a05:622a:1996:b0:41c:bac1:6d0 with SMTP id u22-20020a05622a199600b0041cbac106d0mr7907351qtc.36.1699853628036;
        Sun, 12 Nov 2023 21:33:48 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7f09:0:b0:41e:8c36:f7a3 with SMTP id f9-20020ac87f09000000b0041e8c36f7a3ls1069214qtk.2.-pod-prod-03-us;
 Sun, 12 Nov 2023 21:33:47 -0800 (PST)
X-Received: by 2002:a1f:9cd6:0:b0:4ab:cdf0:b2c7 with SMTP id f205-20020a1f9cd6000000b004abcdf0b2c7mr1701248vke.5.1699853626978;
        Sun, 12 Nov 2023 21:33:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699853626; cv=none;
        d=google.com; s=arc-20160816;
        b=PE6zQr02tUSJjnUNP+guhbv3YC8YedrDyCHn4Fp+/npvLSium4+zUQ8Bbp8ICI61UW
         03JwFqUjahSIHVoMLtCCTBamOo1rdA3bG/JG+XwxRZbaGyJva9cb1BGQ9donBzAcTy14
         A9+nqcKzXR07Oac3q/AhgUudYEN7VAiQlETQ8AkOXRP+hfLTpc9/8SZ1iBo6L5QlyS73
         SrCkRxAaJPLsLIC2ROxojPWEwYcVB1FjPUozdTSiaxNjXWz63rvDWQG8df7GyfhRk6WS
         9RJ0g9A7g0YSXLhgol4cNoEJ2UiYBGUqcL0CyQgbpgIwHDyYeB2Kk5nd4Gp0oz6IkRHj
         hSRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:message-id
         :subject:from:to:date:delivered-to;
        bh=Q1x+OFfPTBzgYZiUn5489scyw4kFO8YEC5w8tnAXmuY=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=n5/nbSv0w992m6oAadxRFkB+pQvlLv3Om63INRalYOcOLuvVD7L90/XISPxvfj90A+
         8APAL5smjx2kZdUZ8drOw+NTJJKF/aC5ZVnPDYpSvqQBBpRZHtkNlrXHplUuB/PYX9V3
         NLHbP4V+IqQgpPk/TFo3t18XWpsYzWoNWtsCMzHwJUcr+lSoShBWNgSD0D0V/Gk0mv4G
         g8l4qqZco+hLnxAJ/i76F1B7gLe9zlIuD5hkb3n6ciSozl1C3J3KWPupDC1BcBbQblF4
         9xZ71Uz/bmr8fT2loKzSU9QPFZ/jKi9E0y8vGqZU1ksVmEJ/f/Sm6PQ5Bvp3HtqrutxZ
         aY4A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id ga6-20020a05622a590600b0041987850ceesi3363792qtb.480.2023.11.12.21.33.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 21:33:46 -0800 (PST)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) client-ip=185.70.43.27;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-570-QI1cDtP6PaysZhfolMZ0kA-1; Mon, 13 Nov 2023 00:33:45 -0500
X-MC-Unique: QI1cDtP6PaysZhfolMZ0kA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 45447185A780
	for <blinux-list@gapps.redhat.com>; Mon, 13 Nov 2023 05:33:45 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 417FC492BFC; Mon, 13 Nov 2023 05:33:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A75C492BFA
	for <blinux-list@redhat.com>; Mon, 13 Nov 2023 05:33:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18DC38007B3
	for <blinux-list@redhat.com>; Mon, 13 Nov 2023 05:33:45 +0000 (UTC)
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch
 [185.70.43.27]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-6-4_tidZ6FPVuwIAkBcbTESA-1; Mon, 13 Nov 2023 00:33:42 -0500
X-MC-Unique: 4_tidZ6FPVuwIAkBcbTESA-1
Date: Mon, 13 Nov 2023 05:33:11 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Clipshare: Copy anywhere, Paste anywhere, End to End encrypted!
Message-ID: <8e76c258-d062-4ed0-9245-02be96d70a6c@protonmail.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted
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

Hello everyone,
There are many awesome data sharing solutions around. However, I've 
always wanted to be able to just Ctrl+C on one machine and Ctrl+V on 
another, clipboard is just such a handy thing!
so, I finally decided to get this done. Welcome Clipshare, a foss, end 
to end encrypted universal clipboard, written in Rust! Only Text and 
desktop platforms supported for now, but Android is definitely coming 
and files / images perhaps too.
https://github.com/RastislavKish/clipshare

Global hotkeys on Windows need Autohotkey for now as far as I can tell, 
I was building the program on Linux so the Microsoft platform got 
somewhat minor attention. But the sync mode does work, so you can use 
tools like AHK to make it working. I will try to fix it, though I don't 
have a Windows machine, just VMs, which are always pain to work with 
because of shifting data here and there, etc., so this may take few days.

The Linux version is most usable on X11, where things work seamlessly 
(at least on my UM 22.04). Wayland could in theory be made working, 
using the same trick as with Windows i.e. direct commands bount to 
anything capable of handling global shortcuts, the only complication may 
be the Wayland clipboard access restrictions, but I'm still quite 
confused by the Linux clipboard mess, so since I didn't test this in 
practice, I have little relevant information.

And also, pasting in sync mode without using the daemon doesn't work 
yet, this needs to be fixed. So, there are few rough edges to be 
polished, but on X11, the experience is already pretty convincing.

If you'd like a global clipboard, make sure to test it out! Your 
feedback is very welcome!

Also, I'm running an instance of the server, which is configured in the 
default config.toml (place into ~/.config./clipshare). Feel free to use 
it as you please, with the amount of users my programs normally have, 
I'm sure it's not getting flooded any time soon. :D
Although, it is a part of a bigger construction I'm building, so 
oddities can happen, please if you are getting any "Unable to access 
shared clipboard" or "Unable to connect to shared clipboard" errors, 
please let me know.

Best regards

Rastislav


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

