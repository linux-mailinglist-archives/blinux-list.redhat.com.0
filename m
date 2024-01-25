Return-Path: <blinux-list+bncBCMKFVG4RQEBB36YZKWQMGQE6JZAXQY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3AE83CB73
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 19:46:08 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-42a3cd0db31sf51358071cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 10:46:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706208367; cv=pass;
        d=google.com; s=arc-20160816;
        b=clV89RAqqR/dYveMToFr6idn4jq1a09CBd2+3wgZTDPVz+wPW9HK5ZLrjraAd829w8
         jgr7pu7Sc8MaY7KpfUIU/eMaWeUvJeHnJCwhXpbMRuHEaXIl03xwtznNqMyMXoWLFeU7
         /JGURBsuJzlI0QOxoXTqx+Iv7fGmYdcp5jy9nL7yKH9Hy8BtbSEABDYhpthicw5AIQ+F
         B6avFaS+zM64By3RWK/dEgNBw5Eel0bLVe4+wfp470nbU1cTpK8wRE89lN3s6qHb+0SB
         uNc7ZDb+H8o/9w0Vefg2mwgTKPcbbPVTuwJ1xnEChXS4hV09F5cN5Vo0Bbj7aOtOCwZD
         M3jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=P6VS/jes/aeW4X+TZ/C3X39liNWZWDx8dCSV8GakYy4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0682yNJUDnRNseAQJ/DwT5hdcPShTg7sdJ/Lm0RrrzXp+YjheUkeuKfnFXUsK65Vhr
         Q9kwiTZW7dpUCsLGv/ZN4ArADftq/dBahfkIRRABf46sUY9LKw+bMllDjzvuVsNgHN74
         LbGhwpNn/0T7AweYoocqF/edCGBa8yCuSRmPQnRjHJ2MMdG2S6fhwj8sAioOuGP++688
         Sfl1JkktkzOH6ktvskClNONmvIvJREaQ1tge2nUCs+KuRuESCU5fp8MV+BMsQkaXyjDf
         9Uj6LAr2y6Lo+J0gYicOh3CUPHrKuhnyrx60s7l3/xkdu1HnLFc/4C2sAXfmpYzetvzZ
         z4/Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706208367; x=1706813167;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6VS/jes/aeW4X+TZ/C3X39liNWZWDx8dCSV8GakYy4=;
        b=KOe/8SiixR9/dkyRT4jNNGdu5u3TJxx4OhMDQw2iduDpMpXgmvjp7N78hznSfxUOv9
         +2FU1rbfKmprhigXUfwcUm56fBEtuBT62WCYL3VOb7nHEwPOcE6hfT6Zz3QqTCj2xYuz
         8cYdlvaLDRJU7tvs9El/4vYovRdzbRPqVlrDaExcTNHvlCvXrIUMMd+OuNb8hSYOMUA/
         8F3CyQHebwTPtOR8UU07ISsjYRsC9jpT2tLR5KqBxlhgwp65bB6JONaU9+5bPs5g3nXC
         74YBFzqAoE9Xiip1y/g3QzsR0vadc7T56kiTWbP+ZPGzwo0CjDZp7k+1nRm2H58rIkXA
         p8eQ==
X-Gm-Message-State: AOJu0YxNNsQMcuA32sYMow34zoMjxoo+OeWV6xnyLR81JfCO+ZGWlfp3
	qGsWl1EB+ARORF3DQfJDgTKk4IgFMtcIugPhjPFu3BAaNv2md2bC5nFmhhaKCmg=
X-Google-Smtp-Source: AGHT+IEKgGn7AOGS58R1S183OHutx906CIBXfr7Ur0mocCOP7enu1cEGIjr8FHD1z5u86miopeCnfg==
X-Received: by 2002:a05:622a:54c:b0:42a:6c59:5513 with SMTP id m12-20020a05622a054c00b0042a6c595513mr75799qtx.76.1706208367558;
        Thu, 25 Jan 2024 10:46:07 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5405:0:b0:42a:30ba:32bc with SMTP id b5-20020ac85405000000b0042a30ba32bcls6580330qtq.1.-pod-prod-03-us;
 Thu, 25 Jan 2024 10:46:06 -0800 (PST)
X-Received: by 2002:a05:620a:16b4:b0:783:c889:9887 with SMTP id s20-20020a05620a16b400b00783c8899887mr157352qkj.18.1706208366688;
        Thu, 25 Jan 2024 10:46:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706208366; cv=none;
        d=google.com; s=arc-20160816;
        b=RcIh3gk3VXEKvyFajacEmVibJ20strJipYarDZkQyNPQYOHxx+tAQ4T84Asr+paA83
         GYz/ZULEO7JOCttCsx5IbMOOqltqaIjU0D4z6xtS99QivAqc+ANgPBSGt1fqOucjGiVO
         x+FAfF75D5VBeTONXtLDpediv0aENK3XfKLQTbNYa37rcZ4SSRwFb1nN7J/j4gQ4JJGM
         urwlKcEa8q3MwwE+KCNpwZ7qyGf3KkJLywYP3pI9Timi5dswehNiH1oG5EPh9MJbpzA0
         6Pv5mZI91DO+v+g0yF8y8T2jq36a8Dvj1QGuOYA1b4L0iSBRMW0ne2prhg28uW0fR8Ww
         NvJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=9vc/jlII/GO+PIUN9sIOF7/YoKPKN1yIG7kjStK4kMA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=A8YSnJ2+wN2I9bT9kSwPhSwC5y7hkj3TaO4kAV9QXCTwOJGIggSuKgQW/Qbe3yd0zc
         Jh8n3QKHltvw02eP8RpnD67NRdTXBFVND4xLhwU+YBYHqUwR4ZhKqDo0D7f69/IMSqay
         chhIBfK0yGcmOSlPiks3tv+b2lc7oxYvEkwpt3P9QBD9Nb/pz3HBGoqW+Je6KsD4gRfC
         dOKBX2aVGAm02ja7ZE3+mWnA/BmJhCkQ5uf+MVMxXQRebGQ2epeSF/RYTXUTNPKM3v/T
         0Z8GozyVMxBu2lzJje2tcIxF+pvgrodak6UqKyygrbVdJQZAe2ARlzsWR8GOjG0ecgzi
         cudg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id vy25-20020a05620a491900b007832234df97si12673755qkn.553.2024.01.25.10.46.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 10:46:06 -0800 (PST)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-511-zXi3E45LOqmBuhv9cDwk3w-1; Thu,
 25 Jan 2024 13:46:04 -0500
X-MC-Unique: zXi3E45LOqmBuhv9cDwk3w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC0892820B8E
	for <blinux-list@gapps.redhat.com>; Thu, 25 Jan 2024 18:46:03 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E905E200ADE2; Thu, 25 Jan 2024 18:46:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E048D200A08E
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 18:46:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B85D23C0F252
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 18:46:03 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-418-PWAzMaiTMxusRW1UgGAjpw-1; Thu,
 25 Jan 2024 13:46:00 -0500
X-MC-Unique: PWAzMaiTMxusRW1UgGAjpw-1
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C4B62625D8
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 19:45:55 +0100 (CET)
Message-ID: <77c0e23f-32de-4103-9bf1-f504a4d4b82f@slint.fr>
Date: Thu, 25 Jan 2024 19:45:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Something small to install Linux on.
To: blinux-list@redhat.com
References: <A9534E5B-88A3-4F43-914B-846CF6F8E465@pipkrokodil.se>
 <ZbJ81eC3H6fmtfoC@thechases.com>
 <ce95a147-37c1-4347-99ef-9520116af9a1@seznam.cz>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <ce95a147-37c1-4347-99ef-9520116af9a1@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
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

Hello

You could install stormux: https://stormux.org/ which has up to date softwa=
re.

Didier

Le 1/25/24 =C3=A0 18:19, Vojtech =C5=A1miro a =C3=A9crit=C2=A0:
> Hello,
>=20
> but, unfortunatelly, in Raspbian there is no way to use Mate desktop and =
Orca in
> the system is pretty old.
>=20
> Vojta.
>=20
> Dne 25. 01. 24 v 16:23 Tim Chase napsal(a):
>> Tim here, responding in-line:
>>
>>> How much storage do I need?
>>
>> That's a bit like asking how long a piece of string you need.=C2=A0 It
>> depends on what you're doing with it.=C2=A0 The base Raspbian operating
>> system should fit in a couple gigabytes (I think it fits on a 2GB
>> card last time I checked), however that doesn't leave much room for
>> *your* files.=C2=A0 If you use some other Raspberry Pi distribution,
>> you'd want to take into consideration its base image-size.
>>
>> That said, an 8GB card should be plenty big-enough, and I see 64GB
>> SD cards for under $10.=C2=A0 However, note that the *speed* is likely
>> more important than the space since SD cards can be a bit slow.=C2=A0 I
>> have some older 4GB cards that are slower than class-10 and they
>> are *painful* to run from.=C2=A0 Also, buy a reputable brand from a
>> reputable vendor.=C2=A0 There are a LOT of rubbish cards out there that
>> report large sizes but only have some minimal capacity and you don't
>> find that out until seve3ral months down the road.
>>
>>> And how many usb-ports are there on the 400?
>>
>> There are two USB 3.0 ports and one USB 2.0 (all USB-A form-factor)
>>
>> And there's also a USB-C port for power-supply.
>>
>>> Does it support Bluetooth and Wifi?
>>
>> Yes, it has Bluetoogh 5.0 with BLE, and Wifi
>>
>> You can read the full specs here
>>
>> https://www.raspberrypi.com/products/raspberry-pi-400/specifications/
>>
>> I don't know what your accessibility-preferences are, but it might
>> be important to note that it doesn't have an audio-out jack (standard
>> 3mm headphone jack). So you intend to use TTS rather than Braille
>> or a screen-magnifier, you would either need to get an HDMI-to-headphone
>> adapter or a USB audio device (I picked one up recently for under
>> $10).
>>
>> Additionally, I wrote up a detailed description identifying the
>> ports and keyboard layout, and Mike posted it here:
>>
>> http://www.raspberryvi.org/pages/guides/board-description.html#model-400
>>
>> in case you want the nitty-gritty for familiarizing yourself with
>> the unit.
>>
>> Hopefully this helps,
>>
>> -tim
>>
>>
>>
>>
>>
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

