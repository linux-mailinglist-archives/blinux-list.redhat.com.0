Return-Path: <blinux-list+bncBCFIHJ744YGRBW7ZZGWQMGQE7YA5XFA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B74183C674
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 16:23:09 +0100 (CET)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-210d475f7a0sf5709535fac.2
        for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 07:23:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706196188; cv=pass;
        d=google.com; s=arc-20160816;
        b=jW5aaMw0HCER8yj5tsvcvxPvC0gacgX+1oQrvRfcTpxxP7CHhuvdiDkXYpWfEf5gQn
         giZIx1f5LkshBwwF8F5tgvu/wnN1Tc9KXEcukBAe5Osu1DZSgJTWre2EfcMKDoSRpTU8
         lR4fM+y25x0al16QR9GD3ScCcftnr6gjq71NhtJO8M7i5vUh89uNO8dRydrNQO3IkCw0
         8eE+OAPkfkWxOI/n/810wibVwlsiotjXjv0dSpbe8lLKoOFWVYhVYDJfkhjp/er1PdBU
         y513xuNuesvYJ4ncYB2OUCX2C6O70AzXWHBu4/beoLvEZJsYdovTHkKRzLIMVGgJGd4j
         BdIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to;
        bh=lhfEFPMChvs+tA44Xxs8l+YUjbGYtv21x06XBS1fzpQ=;
        fh=WnsjKZRRO0QUX2i+VakPaKFScyrdipjU0Za7WIrXccM=;
        b=yg8v3jTGsZ3gjjJ6pNnwPsXdfKfu2a39c9BAgUV0leoiy7cDeAfyryzyuPBc+QAz1L
         VN28WgqxX7+fPuYOikuYOKw8vBETpHp69Rts8QQghl/xfc8NuWM4GOpQNl5hUjuL1ViL
         B2Axhlp6Ky3dPExEIzllP08YsJ8OM8cGwMXZ0OAgF0ov4hZV0Zs0F609Ouxnk/eusB3w
         vscPr2XJZ/ixtBsD+vahc6XQEL+U9if4s2fw9rpTq8W+IarMLWOGrcgCOUF8w460hgOL
         tkk3nD7PXCv0gNb9och2NQpARfklgLKtrZhAJzCm4WaBXIlXcG7uA9yOPCMOa6xEervX
         beEw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706196188; x=1706800988;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lhfEFPMChvs+tA44Xxs8l+YUjbGYtv21x06XBS1fzpQ=;
        b=R6s4LgjsTfyUaoQa3gO7e8o07QM9nFpinIWI64SPZ7SFUrWKi5uruwd5Zf5ZIPY9EE
         K2uZyS51VgQSagpq0t9ohfKIqdoBjLzeEoXxdGi12vGeWVIbqXKZpanj8oPuYZhGCf3t
         Z5dyngTElVOu0pXWzz6yiXUcNFbIki9szyV0EnLLhBbXZvwwrBK+YoiGjjU2NQWRmx3f
         ReeZDxTRMg7N8FQDfKuJFJHftK9gK9lcr2XMAsMM7BIGS2r5OrmX2judsUbDWFnf+Bb/
         BQAa8rSXrtU2NvjXo3K8PoSV4twFx0MvzI8l4FroTrZqhvIoZVwCfGSPI3uUKuSzuOLA
         U2Ug==
X-Gm-Message-State: AOJu0Yyt2/HSsZiaRU/DTEp7Qq+v8nBefE4xOGyrEi5hQl+CK7itZMHB
	9kY9eKeGTDuY6+uTgGrO8/L69LiVFcxfcdmCi4fNVpIUppCFKZDuf1ZEmyDA+kOa1dAO1Hw=
X-Google-Smtp-Source: AGHT+IF2Q2AEnsFRyAJN/MtUxiaHJH7LTK1O6RIXwCm4ucqCqXRpzz4J+E4Qt8YztIoHSN6id6GFTA==
X-Received: by 2002:a05:6870:9e02:b0:210:deff:999b with SMTP id ps2-20020a0568709e0200b00210deff999bmr1226165oab.47.1706196188008;
        Thu, 25 Jan 2024 07:23:08 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:68f:b0:210:e1dc:f597 with SMTP id
 l15-20020a056871068f00b00210e1dcf597ls1396757oao.1.-pod-prod-07-us; Thu, 25
 Jan 2024 07:23:07 -0800 (PST)
X-Received: by 2002:a05:6359:4808:b0:176:4fce:2e with SMTP id oj8-20020a056359480800b001764fce002emr933251rwb.51.1706196187088;
        Thu, 25 Jan 2024 07:23:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706196187; cv=none;
        d=google.com; s=arc-20160816;
        b=s5YyoWPXBP9sSDkrYuk0GKIGkxXZ/RiMlsehC2w7lbieVHoUyBchXM6A2bQdjAKL3u
         0AGZzGPXGz+XNBCIClp0pCMxrl1M4QGdIycStlPE4L699gCsTmOWlGpZJffe3mGbGPz8
         qlfBE6KmJ8wgr0vEakMgoSmiDV2kwM+imk6Epq6PZMcAJE3BO6H1w2y92oaj/SOrGgjL
         I1zEQjvAZiU4gpMPKVTeeZ37s1FuaXTJSJ29pGpjAVWczC3kiS3VtV1NXaM88LNieYf9
         2pJ/UiZJrNXd94y7XrJJH1zPnDWlC30kz3GVKuD04rpnXsz7ZueFOZf57IpDwBJIM0XH
         diow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to;
        bh=TQ1LZN8G9T449XFATWSAKASdU7jWItNkI2bNK4RamF4=;
        fh=WnsjKZRRO0QUX2i+VakPaKFScyrdipjU0Za7WIrXccM=;
        b=QBnDQv3ho9PJhXekGSLqmIzRV8SRM9wuJxr3d24BceCb6vxDmhvciTdBKxUPTQkCWQ
         zaUiwP0yiZ5UBc4zqB8y98lk81SP6dLYdF6PmqL6xhGzJ/ZeeW1vrS/Nkd45qznMpbX4
         LekwHU1Bl+nT+Lsy4RB4wXwSRUpx5fQEkIwXtR9qL0Y5l+ZULGmcaAgABcY+hqG1Xgk0
         H75zaB5RI817vPJXWHD1mklGZ5SpKgIdB11deTTxvjryGN+KLXNtF9nnwDUqIJJyqD0B
         ZB9KHx1dW08/s5IFVtag0wUFDJfRCr2xhswzhGKyrvTe0FHcDlz7HJFVrE5tHIOXtNir
         Ehqg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id s6-20020a056102370600b0046b1238be44si494714vst.746.2024.01.25.07.23.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 07:23:06 -0800 (PST)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-153-9xpJ95m2NgOr1hHbBP-xeQ-1; Thu, 25 Jan 2024 10:23:05 -0500
X-MC-Unique: 9xpJ95m2NgOr1hHbBP-xeQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 88F52185A78A
	for <blinux-list@gapps.redhat.com>; Thu, 25 Jan 2024 15:23:04 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8625D492BFD; Thu, 25 Jan 2024 15:23:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EA64492BFA
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 15:23:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5EF0084AC68
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 15:23:04 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-145-iRucmGx6MPew5m3OcmRrAw-1; Thu,
 25 Jan 2024 10:23:01 -0500
X-MC-Unique: iRucmGx6MPew5m3OcmRrAw-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 4afe3572;
	Thu, 25 Jan 2024 15:23:01 +0000 (UTC)
Date: Thu, 25 Jan 2024 09:23:01 -0600
From: Tim Chase <blinux.list@thechases.com>
To: Blinux-list@redhat.com
Cc: Anders Holmberg <anders@pipkrokodil.se>
Subject: Re: Something small to install Linux on.
Message-ID: <ZbJ81eC3H6fmtfoC@thechases.com>
Mail-Followup-To: Blinux-list@redhat.com,
	Anders Holmberg <anders@pipkrokodil.se>
References: <A9534E5B-88A3-4F43-914B-846CF6F8E465@pipkrokodil.se>
MIME-Version: 1.0
In-Reply-To: <A9534E5B-88A3-4F43-914B-846CF6F8E465@pipkrokodil.se>
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

Tim here, responding in-line:

> How much storage do I need?

That's a bit like asking how long a piece of string you need.  It
depends on what you're doing with it.  The base Raspbian operating
system should fit in a couple gigabytes (I think it fits on a 2GB
card last time I checked), however that doesn't leave much room for
*your* files.  If you use some other Raspberry Pi distribution,
you'd want to take into consideration its base image-size.

That said, an 8GB card should be plenty big-enough, and I see 64GB
SD cards for under $10.  However, note that the *speed* is likely
more important than the space since SD cards can be a bit slow.  I
have some older 4GB cards that are slower than class-10 and they
are *painful* to run from.  Also, buy a reputable brand from a
reputable vendor.  There are a LOT of rubbish cards out there that
report large sizes but only have some minimal capacity and you don't
find that out until seve3ral months down the road.

> And how many usb-ports are there on the 400?

There are two USB 3.0 ports and one USB 2.0 (all USB-A form-factor)

And there's also a USB-C port for power-supply.

> Does it support Bluetooth and Wifi?

Yes, it has Bluetoogh 5.0 with BLE, and Wifi

You can read the full specs here

https://www.raspberrypi.com/products/raspberry-pi-400/specifications/

I don't know what your accessibility-preferences are, but it might
be important to note that it doesn't have an audio-out jack (standard
3mm headphone jack). So you intend to use TTS rather than Braille
or a screen-magnifier, you would either need to get an HDMI-to-headphone
adapter or a USB audio device (I picked one up recently for under
$10).

Additionally, I wrote up a detailed description identifying the
ports and keyboard layout, and Mike posted it here:

http://www.raspberryvi.org/pages/guides/board-description.html#model-400

in case you want the nitty-gritty for familiarizing yourself with
the unit.

Hopefully this helps,

-tim





-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

