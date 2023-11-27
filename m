Return-Path: <blinux-list+bncBCPN3MHH6QPBBOU6SGVQMGQEKZEAFKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BC17F9B5C
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 09:11:39 +0100 (CET)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3b2e0f24de0sf4635351b6e.0
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 00:11:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701072698; cv=pass;
        d=google.com; s=arc-20160816;
        b=NFD45TH5hBPvaMVhaH4NUAArp+eAknMURjdxseVditFiXg6U470ChzfEVQd5Yofj8n
         bzjb9Vl14xitMSOFjoVhxK2duPlKa1iXj0MiAiIzhIcImqfSDwutkehUxNL/vlZedI5R
         5H7F8Z+kNXW+ElPjEz1QEOdRQU75EAb2FGSSR4Y0UJC/KjINiTy07GI2w6iplvzFXtCL
         cI2cc9xlwMqizoYc8RFcxWsCY+A3EcGtO2CujDbQCVXC2qSp1/iWZPEQTXin0QC0Puqu
         opFmN14DVJJLNS6a+9xZEbBSrJUnL7hOkwYoZARHTJZT/WXN16snsf9qEAtbvpVvQcG3
         UXVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=UTs69HSxRjiciBvb7aLMA2EzW/Dy2r72ILcY9Zf/67M=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=D2lRDdrry82k9Pb6I/sx7g00JFficCZ0Z0C2UGJa0O9FoZq+qU8CKwdLErrk6BjP2i
         uzCAJmBS2k4HB+Jljfyp2zKLUoHLJVhJMeEzP+yUBGAyp3Y1NQKPXHYuiLeFqT3omWDT
         cIfbl1tmZRA6kgadeiRg4x52/wsvSE0ycHCdfjBd+3mSgTxI0YZX4oR4LzNoLi2gJAv8
         0YXu/yOo3fDSRKarLwsD9HnTKHhaA2CcBgumoadE9jXBuEtLOTFT8OZJ364mzG7hLp5X
         pG+EgmxavogZrVsPhItAZ/yJA4++dyxl1MqSG74gvdoAtk719PzJa+5Uq784FJT4xD3U
         ULkw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of destructatron2018@gmail.com designates 209.85.208.179 as permitted sender) smtp.mailfrom=destructatron2018@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701072698; x=1701677498;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTs69HSxRjiciBvb7aLMA2EzW/Dy2r72ILcY9Zf/67M=;
        b=j44T4N3CO9MqmWDdEnS/glyNkhWHLDnjEMC6gOPLs4d8hO2qvz7HtaZa7doXdy+1UV
         ca3PFVKqMTtI90Ca83q5EVcx52BkFPdLUZmVG5oNDLOOWXX+sLy8YP6av1UleKuNJmmU
         RoMoQwB7lmLMaDM0w2biyLnSX+7ksYGa8wWwDKtNqdQg4xkQ6vWYl8Def7fRJa/wHib0
         EKiDgFaDV3+qS8Am3NL002+uq34Jz08Tta1im/wTDw+ou+VYCBJI87oG/8txz/3eJQhd
         cmZwMQUUK/9SQw0Lc06zw5ME/cL8PyGVo9+p5GM/M7iuWGSCQ7ht8UCh7v904KyLoHkU
         8nIw==
X-Gm-Message-State: AOJu0YwrJR4ZIH+Y1Sfw74pL2CTsECv+u2uYOLLZkQUMV6UA+PwQvwre
	2iLsIZj6H0wEjljUhLso2T73zQ==
X-Google-Smtp-Source: AGHT+IH4jbGY/rCKTfb6U3lSTaSoIaubvrgSgHT+1NpFCflDv81kxhQnstOiVh6T05Kf9AMv9fHDHg==
X-Received: by 2002:a05:6358:4406:b0:16e:12e:e232 with SMTP id z6-20020a056358440600b0016e012ee232mr12015510rwc.6.1701072698373;
        Mon, 27 Nov 2023 00:11:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:58d1:0:b0:41b:5e46:aa61 with SMTP id u17-20020ac858d1000000b0041b5e46aa61ls1257880qta.1.-pod-prod-02-us;
 Mon, 27 Nov 2023 00:11:37 -0800 (PST)
X-Received: by 2002:a05:620a:2815:b0:76d:9f64:f638 with SMTP id f21-20020a05620a281500b0076d9f64f638mr7251178qkp.51.1701072697600;
        Mon, 27 Nov 2023 00:11:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701072697; cv=none;
        d=google.com; s=arc-20160816;
        b=ubPpZ2pdCirAxzavV5RZb9hxas3FKmeyXcOnrHbPmd3HnnRatf/lgas3vg/ifUdamH
         8+cshLffo8VL1c380Y/q+MOVcs9OH5Gv+OFM4JwrlLwAETj6qEw0kNxJ3JNiTYZ2wSyw
         dtJfLFQsd+EmutiDMKnsWWhZc7kueldUqrF/ZjUBTesocVMbthik1Kp2sQb7f3OT91hw
         pKBgjoSupvPMp2mN0AueIG78DX4FACAPNTIYmph4ODAKZxsAcHjBWODmrFo50DSx7uWs
         KVSH2j30FCcvWUQxSPAcwy/8CyqZlgW752SyJiuh6M5sYi5VUagzi27/0VSjyzIKbXJX
         YfWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=ZSas7ibcZgc9jeGSdDDGyJhFEnK2i02g8TfZ2bZWvzc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ZTqt2XQhf9PZpNH0VNImdnvvFyMw4Zn+adj7NNDPnNiur9z+SixtBfDGj8TLm5JizQ
         tfMkxyBVg/xWmkHudi+YeTGS7brklqh/AN8EUu/GZ2kjMUIZt+IxnoRLfNdEtKdC/ptv
         roJ3h7qtyjfWq8+BWUM9wP0a4rAlhB0aKn/zBA7DoUaH0YIVs3GI3F+mbbIPiln8+1rN
         dNk+YrDG6knkqGMA8XvDqaLJAoFgmb1HQRfvtkXOT3z1gtqJi1vMjW8XD3i+k/7mZVxv
         XxI1CqWXdh+OZhUb2Kk+nh5shuQnju+FFz77qPQFvHbdG9kvguBSsXL1YLQGViEaT3se
         BOig==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of destructatron2018@gmail.com designates 209.85.208.179 as permitted sender) smtp.mailfrom=destructatron2018@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id w28-20020a05620a095c00b0077bcd1f26a0si8549346qkw.163.2023.11.27.00.11.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 00:11:37 -0800 (PST)
Received-SPF: pass (google.com: domain of destructatron2018@gmail.com designates 209.85.208.179 as permitted sender) client-ip=209.85.208.179;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-594-EyVuKkfnOPS5xp6NCZzYCg-1; Mon,
 27 Nov 2023 03:11:36 -0500
X-MC-Unique: EyVuKkfnOPS5xp6NCZzYCg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C473E3C0E642
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 08:11:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C19E4503A; Mon, 27 Nov 2023 08:11:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B998A5038
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 08:11:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BB303C0E646
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 08:11:35 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-588-XV5jcbe3PJieA_Si9AbCTA-1; Mon, 27 Nov 2023 03:11:33 -0500
X-MC-Unique: XV5jcbe3PJieA_Si9AbCTA-1
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2c5b7764016so43305851fa.1
        for <blinux-list@redhat.com>; Mon, 27 Nov 2023 00:11:33 -0800 (PST)
X-Received: by 2002:a2e:2206:0:b0:2c9:a342:444b with SMTP id i6-20020a2e2206000000b002c9a342444bmr1474351lji.32.1701072691264;
        Mon, 27 Nov 2023 00:11:31 -0800 (PST)
Received: from [10.130.248.2] ([37.203.138.226])
        by smtp.gmail.com with ESMTPSA id r7-20020a05600c35c700b0040b30be6244sm12958885wmq.24.2023.11.27.00.11.30
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 00:11:30 -0800 (PST)
Message-ID: <ae47a771-a3a9-4e19-bd16-63a963c077c0@gmail.com>
Date: Mon, 27 Nov 2023 08:11:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Lightdm-gtk-greeter volume is set to 100 percent
To: blinux-list@redhat.com
References: <5fcb774c-8b8d-4d7a-be5b-c418c2c5f2fb@gmail.com>
From: Harley Richardson <destructatron2018@gmail.com>
In-Reply-To: <5fcb774c-8b8d-4d7a-be5b-c418c2c5f2fb@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: destructatron2018@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of destructatron2018@gmail.com designates 209.85.208.179 as permitted
 sender) smtp.mailfrom=destructatron2018@gmail.com
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

If you use pipewire as your audio server, copy=20
~/.local/state/wireplumber to /var/lib/lightdm/.local/state and use=20
chown to set the owner of the folder to user and group lightdm. For=20
pulseaudio, it's either .config/pulse or it's in .local/state somewhere.=20
This should set your lightdm volume to the same as your normal user volume.

On 11/26/23 21:47, Pavel Vl=C4=8Dek wrote:
> Hi,
>
> is it possible to change lightdm-gtk-greeter volume? When Orca starts,=20
> I get 100% volume and changing it wia default keys is not working.
>
> Thanks,
>
> Pavel
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

