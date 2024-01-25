Return-Path: <blinux-list+bncBDEPFPWCWMDRBSVQZKWQMGQE2CXZ6SQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 184C683C9D3
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 18:20:12 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-428205848e9sf86055711cf.2
        for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 09:20:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706203211; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZkF/2HUvJvBRzFkMxlI639DleitEh0v9AooYscWgz4oYa/HUU27ncE6FcMCLC86a6U
         t2XCBFNAofACK80WbrCo/g2qBB79wQRMIXpeDsBAFnJ6rkM/4hsFZqjqdzoCLEcSDJ5M
         bWOU6M0ytLUS3sGx+YoBVWdI/sfzOuqdvuxfDsZ08S4qtcCu/7hQpTHR0SXiJhBl+VjT
         IZ+Y2O1+DmVp+BKmnmYj/ahAxH5t1vdy5ZdgqbIS2d7fISSdkCZAkrjBr55GdBxQoyV6
         sOW7PrP/Jjv8Jl/latd6yWJ73eu2GxO3f4SLw+PYMnN/VR1Pb5bj5JjYwAj6oHNN8Xgv
         tujA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=PVR/KGSfVLPOO0u1Dr/6p6A84u8FsvJvLZlEm72D+JI=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=lJlcjcc6Lrvl5FhbL1d+dsj9hiC6KydVtHKBfujfcsbUSQ1XjnYsixdAKaMafCDoB0
         WVRGy08OHivU3jmT6zZx21CHNiCmMlqvSLdNDylTDUPoscK0vcvlP7ec1C6knUWdaGIi
         VFqo2A6qDa9EAI45CdCIaibA98bIvC9BaDPEmBZi0jyoTy2TuoZtjeWMNNaLRWP2Dbo1
         Q2hysiD5lxqI+yH8PdYvXttVWIsJjq/aFpiVQpYA2M0K8gSKuSNFL8wzLLj8Vti0pomi
         B1LoTQZW2QcNeowDrZ/YQSDuY6g7gZxurg649NNFqhPO0986/e9XHB/JzgybqfHYvGtO
         +XiQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706203211; x=1706808011;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PVR/KGSfVLPOO0u1Dr/6p6A84u8FsvJvLZlEm72D+JI=;
        b=e4Q8DeL1IbCAtG6nkuRkj1+4SEqJlr9RXsoPenQY2ssLZi3KvG8iB0X/l8cFVy/bRD
         GMUrfAhFg7qwOJevRfcpPO7WgGmkd+O/QE2OAPEipxpNLZzMUbd5rfEvYGPoU/qXivfp
         jyxuPrV9CIpB6fFERqOlOzYT1GP1WZYGPWOpFeRzmoLsKiUn/MRNrzBsrQF5gf9/wAYc
         4qpdUZi7Xn3EgUoxxqLdJruaKfqSr+YnXcy00zFw3gtmFmCHKNL48Eh3tOndL4PJ2vhy
         aQoUWuEhtuHFuHmR8wfAS8XWesSB0XebM8lhY2Q6poDAoRTtgWT4WF+5p6wgPKNIPe/v
         3r8g==
X-Gm-Message-State: AOJu0YwadMVXpG/V+zUGPf4R0R6CVTPsMqeeX7k2MCiwSWhNjAEMBRBB
	VXrHsbTnv4IS2y62zIcOxwk7EJdtm6WPEwaJ/WNI6wumER/vAl3k7UAY2NxwsLM=
X-Google-Smtp-Source: AGHT+IGVb72hS4s5GKbqMJftX87G9/B1hIjSs3dCLKNhOwSN5oYCXJ/csaChhflJFShOvlCaKP/Gow==
X-Received: by 2002:ac8:5986:0:b0:42a:509c:b2b4 with SMTP id e6-20020ac85986000000b0042a509cb2b4mr1526914qte.44.1706203210938;
        Thu, 25 Jan 2024 09:20:10 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4c86:0:b0:42a:2e2d:baa5 with SMTP id j6-20020ac84c86000000b0042a2e2dbaa5ls2916017qtv.1.-pod-prod-05-us;
 Thu, 25 Jan 2024 09:20:09 -0800 (PST)
X-Received: by 2002:ac8:5ac2:0:b0:42a:4604:c86d with SMTP id d2-20020ac85ac2000000b0042a4604c86dmr1572904qtd.10.1706203209558;
        Thu, 25 Jan 2024 09:20:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706203209; cv=none;
        d=google.com; s=arc-20160816;
        b=M1fZy26U+43zEQlOW0s2mlVWzUNu4FdF//e2KNxRCBOliMK4bM8oj3Dmd2YmtKFZUn
         sg4oud1QbCP+i1zWWWQcWaR0RQgnjjJFFI/w9bV2R/unslwomCCaJ7HHK20wcBXP3PI7
         k26I2qFo2V2wTcZfzFnrejeYqEdA+xhC+TD648LUO62A0zVUwTaklEHHQgR7ahlIBTJa
         WPTTk+bgH5DUnIw+/8QpKAt8BaoyY4ccFT1AX0nztFMrZg0V127ZV+rXhfm7rIGn9exe
         zEcVeJIqV4daOtKnWLvULjdiPYePJyXlAY/+9ZUhrVYT7YSXNtRKs0G/RvO1fbbCxw7O
         MRcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=YRGI6peDy2B3RtCdntgpEw0JzQQrkFhsOBYYVr1PQDA=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=GWiQDIGxIT+AssyXU79l0DM1kPDbxQQhfSmAJrp7AFbcCajOknWQjh1+R+Ws70Kyb2
         xXwjXoQ8gzKDeHTcJbg8GHMKcfPXmhUdPL3wSARz071RI1jR/cS+0WmjfJvIMvnQZACo
         v5AP7Ns2t633E6xrY8MFwD1ZXnfHa3AKNJpov7RGs9x6ZjgbyX6MlipyKZzW1fF3EDXd
         8bb8/YEVBIL8zBcl+V/4GvnJsNvnJ9aYHhOLsYATF5mPvtc+u8Q9mpRjD25ecQjuVoll
         EN6Ul3h8OrZ/QUVpPBqzTh55zcmvw9KzSFY6F522qqvJyT6dzc4sGWtdqZvoiUwCxH+v
         xCjg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id t5-20020a05622a180500b00429c4619292si13074589qtc.411.2024.01.25.09.20.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 09:20:09 -0800 (PST)
Received-SPF: pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) client-ip=77.75.78.210;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-178-c1kFNZTqMKGB2M8kJ2pNOA-1; Thu, 25 Jan 2024 12:20:08 -0500
X-MC-Unique: c1kFNZTqMKGB2M8kJ2pNOA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF849185A784
	for <blinux-list@gapps.redhat.com>; Thu, 25 Jan 2024 17:20:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id CC2E92166B34; Thu, 25 Jan 2024 17:20:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4B222166B33
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 17:20:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A0DCC3814E9B
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 17:20:07 +0000 (UTC)
Received: from mxd.seznam.cz (mxd.seznam.cz [77.75.78.210]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-84-Ot1nnUxjPpuNSNZNCcMH5w-1; Thu, 25 Jan 2024 12:20:02 -0500
X-MC-Unique: Ot1nnUxjPpuNSNZNCcMH5w-1
Received: from email.seznam.cz
	by smtpc-mxd-59c74bff8c-h66sm
	(smtpc-mxd-59c74bff8c-h66sm [2a02:598:64:8a00::1000:a3b])
	id 02586df017c03eaa03b29cec;
	Thu, 25 Jan 2024 18:20:01 +0100 (CET)
Received: from [192.168.1.198]
	(host-213-235-142-85.ip.topnet.cz [213.235.142.85])
	by smtpd-relay-8565cbd557-pxd8k (smtpd/2.0.17) with ESMTPA
	id 8c030cb7-19f0-4495-bcb9-52ad502243ab;
	Thu, 25 Jan 2024 18:20:00 +0100
Message-ID: <ce95a147-37c1-4347-99ef-9520116af9a1@seznam.cz>
Date: Thu, 25 Jan 2024 18:19:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Something small to install Linux on.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <A9534E5B-88A3-4F43-914B-846CF6F8E465@pipkrokodil.se>
 <ZbJ81eC3H6fmtfoC@thechases.com>
From: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>
In-Reply-To: <ZbJ81eC3H6fmtfoC@thechases.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: seznam.cz
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vsmiro@seznam.cz
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
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

but, unfortunatelly, in Raspbian there is no way to use Mate desktop and 
Orca in the system is pretty old.

Vojta.

Dne 25. 01. 24 v 16:23 Tim Chase napsal(a):
> Tim here, responding in-line:
> 
>> How much storage do I need?
> 
> That's a bit like asking how long a piece of string you need.  It
> depends on what you're doing with it.  The base Raspbian operating
> system should fit in a couple gigabytes (I think it fits on a 2GB
> card last time I checked), however that doesn't leave much room for
> *your* files.  If you use some other Raspberry Pi distribution,
> you'd want to take into consideration its base image-size.
> 
> That said, an 8GB card should be plenty big-enough, and I see 64GB
> SD cards for under $10.  However, note that the *speed* is likely
> more important than the space since SD cards can be a bit slow.  I
> have some older 4GB cards that are slower than class-10 and they
> are *painful* to run from.  Also, buy a reputable brand from a
> reputable vendor.  There are a LOT of rubbish cards out there that
> report large sizes but only have some minimal capacity and you don't
> find that out until seve3ral months down the road.
> 
>> And how many usb-ports are there on the 400?
> 
> There are two USB 3.0 ports and one USB 2.0 (all USB-A form-factor)
> 
> And there's also a USB-C port for power-supply.
> 
>> Does it support Bluetooth and Wifi?
> 
> Yes, it has Bluetoogh 5.0 with BLE, and Wifi
> 
> You can read the full specs here
> 
> https://www.raspberrypi.com/products/raspberry-pi-400/specifications/
> 
> I don't know what your accessibility-preferences are, but it might
> be important to note that it doesn't have an audio-out jack (standard
> 3mm headphone jack). So you intend to use TTS rather than Braille
> or a screen-magnifier, you would either need to get an HDMI-to-headphone
> adapter or a USB audio device (I picked one up recently for under
> $10).
> 
> Additionally, I wrote up a detailed description identifying the
> ports and keyboard layout, and Mike posted it here:
> 
> http://www.raspberryvi.org/pages/guides/board-description.html#model-400
> 
> in case you want the nitty-gritty for familiarizing yourself with
> the unit.
> 
> Hopefully this helps,
> 
> -tim
> 
> 
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

