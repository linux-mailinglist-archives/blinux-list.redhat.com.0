Return-Path: <blinux-list+bncBCLPHQH4XEIRBS6O6OUQMGQEOIIBUFY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9217DA694
	for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 12:49:48 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cbb2970f4sf36095691cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 03:49:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698490187; cv=pass;
        d=google.com; s=arc-20160816;
        b=o/atSX9OxmDpncTio3WcDqQoKeD/Kvtb5H3JX9WmT5Hg0xvkjK5CJ+NLy0cm2Tl6j8
         njHg19QLrYHu6yHbd+g/FqqDRS3OTkC/jKAdfTme5T2MJcsPd44sMUB0ieWwkKEZ2IKf
         7ngV02ITquCp4Uqo9NW3yfgPKtlW7wAwQ+TyPazd54MKJg4LJquj8asvQ7+P4cJMmmPa
         hNqYS219u9H+A/jnqSBRx9vPC6k+eC05+V90nVF7dxcD7y0ubruTjcA6aB/bjLPW8WYS
         dM8Z+ziKxVvIqfCj78XIXXIaJlEyVd98ANxt9wsZbXeuP2v2NwYlHKbhS0lsMihvFG2c
         2/fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=AAnuUNJ8ONTY3YbmMcmvqrq1U0V3LzPMNs8Z+wkB0o4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=DAT80Dvh/47J/zKNDqaKia9vpqos3m83E7XLpDUztpknfAhrQ62++2rBhXkkXBoMnD
         knuPm2XnVVaeNPYsAZPNltY59zeYw9ublP7nCyPTWoIZj3FXGtysJY6RoEDGe7b+Jw9a
         oKhb/RaCSKacvhgLtgS0VELFxoTq4qlW6XiX8RvzBYyfTGAUdh1bY24NMpzxqre+77YE
         fZCRFw6irJwoCieFfoLVNXDcR40qghwJZugi7Qzdd9xeaqdkX+/+ZTIUVmG4yAGPyIbM
         OgtwM8vWxbB0tsJLl0mf30CJvgUS+nopZUODOCXK4ufjLPQy+r3XlQpDU3FGcdJazbmi
         mSDQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698490187; x=1699094987;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AAnuUNJ8ONTY3YbmMcmvqrq1U0V3LzPMNs8Z+wkB0o4=;
        b=TFt+6jtnKPVnYnF4kG4Q2Pu9WutOLfkLXinusEa/3pMnpBdIQ0N8EDvYc/l2oP5bxe
         MSeay9l2KViP6TOMPhjIHjMDYKs6CqgVldnB7mDbYlWNhlsgM+9LuzYe5TVC6WstDjIH
         VIrJnYmboFKPd7OTZCoxSPLJZTmr6tyi3Nz94GCi7a/Eo1naVpRk7NfRMHEmbMhQFVYX
         w6Pp+fk7r5Sf55jXngM7Xm1aRt/TDNsZNtcPnDQv+W6pa80J71AzLhc7iFgyKLVwlmZO
         otdr5J7B3eL6+fSNuNgo2WpgbmOLrXLhicNNTZOka704t9+YUJoIY0Q7DoqItc5DtYV6
         7Y4A==
X-Gm-Message-State: AOJu0Yzd9Drl+F+PxnyN5TVsHkEkyfRf7hFLKsCJ922JDzRdVnA30z7E
	u3RoP6WgB4of5ab/zbpRqK/K9A==
X-Google-Smtp-Source: AGHT+IHkAXq5ZEuDilqNZ3R5in5tdiH4BMB/cQVlU7OEaruMD2z4TbuJWppAtLtaWMvrOLhuwNFymQ==
X-Received: by 2002:a05:622a:41:b0:41e:3e21:a1b3 with SMTP id y1-20020a05622a004100b0041e3e21a1b3mr6105844qtw.56.1698490187401;
        Sat, 28 Oct 2023 03:49:47 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:518e:b0:40f:cffd:aa66 with SMTP id
 ex14-20020a05622a518e00b0040fcffdaa66ls2204832qtb.0.-pod-prod-03-us; Sat, 28
 Oct 2023 03:49:46 -0700 (PDT)
X-Received: by 2002:a05:620a:2889:b0:770:f1e1:202a with SMTP id j9-20020a05620a288900b00770f1e1202amr5103297qkp.66.1698490186451;
        Sat, 28 Oct 2023 03:49:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698490186; cv=none;
        d=google.com; s=arc-20160816;
        b=axDBMZ6VRA36hvGsxte8QEgxWBreQyn/CGnRFxVJV61Liga5f/2yHr0Ovc0KsYbXP1
         KgItPGhxYuNXhO4eoJVe5v/UAeDlhCrTMWJTsfRi1HcKxlr8yrr64oQ9WMskm5BW+TAz
         ELRkJh22y56x/qEfSE0x2S9ejlyYZjCWNTbrIizyqEYKVKFgK2WtXrs3KYTJ52myTQmf
         AXUSYzbEXKA4VlQP5A6pN90qbnSmMWrWmaBRgv5a9qK9aFH2TpKRa4WnpmRShbGE7wrD
         BponzfFysXsXaX3Xax3R45XqfNiuzJkSBQBrw19pM8Xp6ME7oMd4pxr5aa+kQZe41/FP
         BjZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=tlbwglOyTizy5+I72cennkG+C/uw+x8UhVGpGV1KFWk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=SdMyakO33czY7o0tOAIKukDRUIdQzQDqrsTsE17r0lZyL7/JSEcC/Tyv3TdwHxn4lX
         HNS+xwevDciFWsKBulVVYyKO6T/VauTYeL+rNwTSnlnbcARsw6RN6I9S9O5lkCtoY9oB
         O+2aLZAqIn0qc9NplaNfRN8qp0+WgtoBs0GKJ4WKLczYvNL2IoLRJ1qP6JK8OAoX4dA+
         Pu7D7zHo2jILWuf0uHNO4NuipvOclNezZSbwzBu2Hl9XHLzPvr/LplWOBGqPYl2m6pOQ
         S0k979AfY5hbli/3x9ZoCUUja9XaS2o5+xJN7gfUo2nX1ZnabSMZcb6bFyjyVXcZheFd
         Z2Bw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id y6-20020a05620a25c600b00775787784bfsi2133604qko.67.2023.10.28.03.49.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 03:49:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-193-zs2tBoksNU2SlPAgYg60FA-1; Sat, 28 Oct 2023 06:49:44 -0400
X-MC-Unique: zs2tBoksNU2SlPAgYg60FA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4FA6857F8C
	for <blinux-list@gapps.redhat.com>; Sat, 28 Oct 2023 10:49:44 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B195C1121320; Sat, 28 Oct 2023 10:49:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A96291121319
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 10:49:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7AE043816B40
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 10:49:44 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-28-IB24zzu-NnSyMtQNR48Crg-1; Sat,
 28 Oct 2023 06:49:41 -0400
X-MC-Unique: IB24zzu-NnSyMtQNR48Crg-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 187753216D
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 10:49:40 +0000 (UTC)
Message-ID: <89edd853-65f9-41ee-a54c-3f1a2ae49849@jasonjgw.net>
Date: Sat, 28 Oct 2023 06:49:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Gnome: adding own command to startup applications
To: blinux-list@redhat.com
References: <7ca9b9a4-66b2-4712-b649-cf0699b960ec@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <7ca9b9a4-66b2-4712-b649-cf0699b960ec@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 28/10/23 04:19, Pavel Vl=C4=8Dek wrote:
> How can I add:
>
> /usr/bin/canberra-gtk-play --id=3D"desktop-login"
>
> to Gnome 45?
>
You need a .desktop file for it, which you can copy to=20
~/.config/autostart. It should have a desktop file already, as it is a=20
graphical application. Try searching under /usr/share for a directory=20
associated with the application and a file there that matches *.desktop.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

