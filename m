Return-Path: <blinux-list+bncBCFIHJ744YGRB5OUZKWQMGQEVZ2KEJQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AE783CB3E
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 19:37:43 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-68058b0112csf139871476d6.1
        for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 10:37:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706207862; cv=pass;
        d=google.com; s=arc-20160816;
        b=FhchvitImDWZMJIrOtO25QBob8NOuwgHZCLNEmoKOIPNCST9AknzGEFl+H8xheXuaa
         igDAtYWoxoklpsOxZ6gIGJu3dmTHDUU0Qcvg1PTDienLoZoK+Gv6acc5hQTXrhw0S+Yh
         8JHOoww9rlCxKtExEHBAQdrD1s4dkTUbUrdBXoqO4ICd1ZQvJG2FsY0kSmU0t87bSniH
         DlhdyjcmTnCYAg64ADAEE+aYBB5VaZ+EnQY5PxMO1iU4HXtlIujIMMCD9YKkdk5WFJjC
         /PxH2yeKQt6BrlPiMcxUa5lw8wKHipASE6plB6muL2UWILdqy5bOvWOvd4y+arZfH6RB
         sFQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=DdJe25AuP+W037yomK7am1HocgOHLUhj7eKcqA299DU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Wsf49S8lMSmWRLBpVt1BHI5RfNf4kfdnemWzrBqXiWTAysvjICwkiUnCnwuI9Jx3vi
         rjaHBJEvcDCCFXF43bTIkVABy5yFrBEdVQ5X+5OCw1HvC/9NoKv9yx34dWYSYJ4cgutS
         OgREMf0EDnafkcKme43R0IVRJ2qTDYRRVdGe5QdZGzeQ37cShMfVCtnv9ydgtuf7ADRN
         OlmFm7b4ExLDUojKWeWSi7l+vOEAv/L+ZAwuhYZ3XI3C2Y/F6eEgOob1NRqcdIUrdXS1
         7ODfpzuZx3YzB4ytpxfKz8J7W+93u9gu2bc/eA0X2WbpsCIBy6VTxSf9xn5fHakR0IeW
         asrA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706207862; x=1706812662;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DdJe25AuP+W037yomK7am1HocgOHLUhj7eKcqA299DU=;
        b=KeXMaYxLQYTM6myokzXW5gOXIU3Hazti4C6Ro1APglLjY7Q59TZTQ41gDjSILkHJzH
         Vda1krSGTdVSbmE/gz8YNHjwYl3B9zLmMHNNN/MWv8LTefFai6fy/+sEmDOl826R2cJh
         q231hXcWYj2uCBkJhgFzvRU1XPnLLUjoND78HYxtx5dl3A8ZmS1Uc4CWGMCvAQ0UGE12
         Ammxplt21RjLbPFrRzRXPHNut59O4YNZxvt+q67iLsi9/1zXrMfvPTE9BZawXycrdtwE
         nC5Hfe1NiVz5JpKBTbSz4ulwGv9dMntu8D8/qqGLSPlibnw78PTvjX5biWsoAILQCaSm
         5YXw==
X-Gm-Message-State: AOJu0YyMleEve6V7EtOl8N/zZwkPmLJSiDjGFIA93xfADCC7pWbI2Y5Z
	f1Dy9HEbywv0vstkLUHP3Q8lLaP+wOVgOEdOLyTeFnyO5Ak0jVXORL1Xz1t42Nk=
X-Google-Smtp-Source: AGHT+IEgdzT1zCTlBH78X5pT8Ak00Qpngha3QPSTMIe3iIgvE6D1BuAGbYlkUonbFDco/eefYOFqcA==
X-Received: by 2002:a05:6214:481:b0:686:963d:f32a with SMTP id pt1-20020a056214048100b00686963df32amr91193qvb.24.1706207862011;
        Thu, 25 Jan 2024 10:37:42 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:da12:0:b0:681:7940:512a with SMTP id x18-20020a0cda12000000b006817940512als62275qvj.0.-pod-prod-06-us;
 Thu, 25 Jan 2024 10:37:41 -0800 (PST)
X-Received: by 2002:a05:620a:4720:b0:783:8275:fbc7 with SMTP id bs32-20020a05620a472000b007838275fbc7mr183738qkb.58.1706207861153;
        Thu, 25 Jan 2024 10:37:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706207861; cv=none;
        d=google.com; s=arc-20160816;
        b=JLuFsQfsYK/DZXcKJL9LvFXPRyzwBeSsE4JNupX0jgllJHrXtKyxRotIVt777McNA8
         2eotfwKWoiubu/lpMtyRFm3RLHbWc2pfYnElN5vcfS8Pk9AlIhuvf8XE8axg9y9DfEvj
         en/V9voK7tfJaJHHxm12Jk/b2GeZYhst7Lp1Gnf6y3GHUjuzerATfIjc3dD5+O8i2Wt4
         9DqPl+Vk+xsbV+AZQ/9YMVZK6EvaQ2oLmw9qO0YzlZa9GUFH7Fa+ceA6CzLoQAp9Qclz
         YqqRx1PiEwpcLFEpsT73lWVJDIQgo7smiMCcmiMHn0WBMvMwA6t6X7qv8Cga9kWd87B2
         skxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=Z/vB8P4fl0tbuJZBDL9kA3kKc00YwcjWmK+N9zX0oXE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=u3t4e8gV/czHa43TPQt8pPjNPifuCtbAqq9IMyeOE9k/vH9/T2xa1KUrTXzsNk3PhH
         FMN0PLxabmkHMy8aRCNw4ijlNeu70p/wBjS1/O3Ui+xrwJMjL+qzzusMWVIADubhDAeP
         r5Rhj6XgpsdgasI7XSdkZ4yMuZ+cAA5kesPXx2jbdqvk43AyWjjln0w58L2c/lDOyOIE
         INMSd+avcaTY7pGBADmF6wLUXo+LXlW5SEUEv2dr6TjTAuAf93gChIBXG1XBeCGtgj0D
         Tm26iuovM14YPtGwJbyjQBxUwCPXkJgkqvI2TSY7HkqcZzFWEjghw5cKOKeTGYet6GEG
         OwLQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id u1-20020a05620a454100b007839780eef6si12955459qkp.49.2024.01.25.10.37.40
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 10:37:41 -0800 (PST)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-287-5VlaTxSzNUWz22yqnrWA4Q-1; Thu, 25 Jan 2024 13:37:39 -0500
X-MC-Unique: 5VlaTxSzNUWz22yqnrWA4Q-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D9CD88CC44
	for <blinux-list@gapps.redhat.com>; Thu, 25 Jan 2024 18:37:39 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 5A927492BFD; Thu, 25 Jan 2024 18:37:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 52C1D492BFA
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 18:37:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3230185A588
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 18:37:39 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-290-MHWvK4LIMl2IMn6Cc80deA-1; Thu,
 25 Jan 2024 13:37:37 -0500
X-MC-Unique: MHWvK4LIMl2IMn6Cc80deA-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 9af99a75
	for <blinux-list@redhat.com>;
	Thu, 25 Jan 2024 18:37:36 +0000 (UTC)
Date: Thu, 25 Jan 2024 12:37:36 -0600
From: Tim Chase <blinux.list@thechases.com>
To: blinux-list@redhat.com
Subject: Re: Something small to install Linux on.
Message-ID: <ZbKqcBJR9aMmr4Lf@thechases.com>
Mail-Followup-To: blinux-list@redhat.com
References: <A9534E5B-88A3-4F43-914B-846CF6F8E465@pipkrokodil.se>
 <ZbJ81eC3H6fmtfoC@thechases.com>
 <ce95a147-37c1-4347-99ef-9520116af9a1@seznam.cz>
MIME-Version: 1.0
In-Reply-To: <ce95a147-37c1-4347-99ef-9520116af9a1@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

(Tim here again) Yeah, the basics still hold regardless of the
flavor of Linux you install.  I reached for the default Raspbian
image because it's what's most supported on the Raspberry Pi.
However, any distribution that works on the RPi should be fine and
fit within 8 to 10GB for the OS while still having plenty space for
OS-related stuff.  Then you'd need to take into consideration
whatever space you need for your files/data.  If your plan is to
work with media, that might need tens or hundreds of GB for your
files.  If it's just a writing machine or a reading machine with
just some documents, a 16GB drive might be more than plenty.

-tim


On 2024-01-25 18:19, Vojtech ??miro wrote:
> Hello,
> 
> but, unfortunatelly, in Raspbian there is no way to use Mate desktop and
> Orca in the system is pretty old.
> 
> Vojta.
> 
> Dne 25. 01. 24 v 16:23 Tim Chase napsal(a):
> >Tim here, responding in-line:
> >
> >>How much storage do I need?
> >
> >That's a bit like asking how long a piece of string you need.  It
> >depends on what you're doing with it.  The base Raspbian operating
> >system should fit in a couple gigabytes (I think it fits on a 2GB
> >card last time I checked), however that doesn't leave much room for
> >*your* files.  If you use some other Raspberry Pi distribution,
> >you'd want to take into consideration its base image-size.
> >
> >That said, an 8GB card should be plenty big-enough, and I see 64GB
> >SD cards for under $10.  However, note that the *speed* is likely
> >more important than the space since SD cards can be a bit slow.  I
> >have some older 4GB cards that are slower than class-10 and they
> >are *painful* to run from.  Also, buy a reputable brand from a
> >reputable vendor.  There are a LOT of rubbish cards out there that
> >report large sizes but only have some minimal capacity and you don't
> >find that out until seve3ral months down the road.
> >
> >>And how many usb-ports are there on the 400?
> >
> >There are two USB 3.0 ports and one USB 2.0 (all USB-A form-factor)
> >
> >And there's also a USB-C port for power-supply.
> >
> >>Does it support Bluetooth and Wifi?
> >
> >Yes, it has Bluetoogh 5.0 with BLE, and Wifi
> >
> >You can read the full specs here
> >
> >https://www.raspberrypi.com/products/raspberry-pi-400/specifications/
> >
> >I don't know what your accessibility-preferences are, but it might
> >be important to note that it doesn't have an audio-out jack (standard
> >3mm headphone jack). So you intend to use TTS rather than Braille
> >or a screen-magnifier, you would either need to get an HDMI-to-headphone
> >adapter or a USB audio device (I picked one up recently for under
> >$10).
> >
> >Additionally, I wrote up a detailed description identifying the
> >ports and keyboard layout, and Mike posted it here:
> >
> >http://www.raspberryvi.org/pages/guides/board-description.html#model-400
> >
> >in case you want the nitty-gritty for familiarizing yourself with
> >the unit.
> >
> >Hopefully this helps,
> >
> >-tim
> >
> >
> >
> >
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

