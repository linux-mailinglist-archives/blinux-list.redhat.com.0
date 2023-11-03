Return-Path: <blinux-list+bncBCW5NIVR6ABBBO4XSWVAMGQEMHHU2EY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id DD85C7E097F
	for <lists+blinux-list@lfdr.de>; Fri,  3 Nov 2023 20:36:28 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41b0f770312sf23792141cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 03 Nov 2023 12:36:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699040188; cv=pass;
        d=google.com; s=arc-20160816;
        b=fnee2BcMhN8LA/pyCppmPEbrRCs1CZySttki2wGJ+SfpeO6TEEsLFoRYQclkX3zwUQ
         ItEx/lrIhfDZIcNe5Ao0x958GbUQCAF+zSFAVeOihWMR5iiF+AQSnocuvsd/vALyJ9Rh
         2dXsz7mNkuZEYExriPaCS+av3F95EzQtAzrum5mscPPMu8NM1F/sowCV6xRqul7xOEyg
         jxTfum0QX3p6wm7APKPRcUMFnLU5gEzv53YpOuKUQDJvK/ujwQLc7BD7t3Io3IUaGPga
         KCGAfyF0Tin/z8roGkKjF1qZuHfJdSeKrOI10oV07QCDCgWJiuGnm3wwg0h49i2Vbp+k
         /5PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=7OoJ2iYMZaAxIGV5HvcHsQsv2hbxIpyQFabv4KxwokE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=D0ErAV7SK8C+0wfCAcRbXmuBPEarMNLFQjMOwkAaXs5QIpug6MfImk5QIfJ2MxPWqs
         E5/w6fET9fmgmv0qMqox14ZwhAtwj1V5ByMLytYqNHCeKEH/bVhKrgrMyNXn/Gvih+Zd
         r28wk/IV5yQti8Vk26b1AVd+D4B8ViBt0nPomwS4tjE8fa4uLPC6kdkLnyK9Q+DUX5XD
         uhc/ZCZfcds6koQDJVaDPt7kcSAOOBYqr2WSwyf1i71h28nw1ECCws9+J9ewOiO4ivkV
         2xXgS2gt/CeAd4Nd7gD1LW6E+rfqd2mSiCfjKZZIXIVucPutVemFyMJkVevZbJ2FuljU
         /ONg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.50 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699040188; x=1699644988;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7OoJ2iYMZaAxIGV5HvcHsQsv2hbxIpyQFabv4KxwokE=;
        b=nC95GNZvX/cLmvyjxKaSMtoEMPY3gQeMtWE+QpR8hC/uclHxdzBI65Zs3QeJlytzV8
         QpRrBb+CnI4dkCkObY+W04deekaOo86WVf2e4oXi0GZpWiVpDKJXNql5mObIKxOg/bvM
         y6vynIpWekjJqumqLbUHMzVd4Y3aVJ+UCEXMajEOANPurorBsgqFnE8H8MUD1R2deYfP
         oGz5WsXN8mNnsWo5UC16nD3bNIPzs+f0pjl0VzzIO/ZeaPPROmGZPa2utMLumohlX0IG
         ZBOhEocCnBNWlfRCsgvV2WR5+nGNoNMIcTOIi4WleW2tHvjmJ3cPZeghG7/2/4edI5V2
         22pg==
X-Gm-Message-State: AOJu0YymjO0fXmy0QdPpiM5Gn7r3ttSPJPpEQnUnM4Fysbi0pzkf0ibH
	JNej1QPpAHG0W0RPhlY+8OGFeA==
X-Google-Smtp-Source: AGHT+IGkjEHLIwNjW+ps3XYiri9q6NvOrpGhL6qDCq5hQzj7smJ14kBbEfcd/1wvnNAU42szdKi96A==
X-Received: by 2002:a05:622a:1113:b0:417:b45b:84c7 with SMTP id e19-20020a05622a111300b00417b45b84c7mr26572492qty.19.1699040187653;
        Fri, 03 Nov 2023 12:36:27 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4089:0:b0:41e:89c3:a60f with SMTP id p9-20020ac84089000000b0041e89c3a60fls2421748qtl.0.-pod-prod-05-us;
 Fri, 03 Nov 2023 12:36:27 -0700 (PDT)
X-Received: by 2002:ac8:5f06:0:b0:419:573c:59a4 with SMTP id x6-20020ac85f06000000b00419573c59a4mr24692725qta.20.1699040186862;
        Fri, 03 Nov 2023 12:36:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699040186; cv=none;
        d=google.com; s=arc-20160816;
        b=LOCoTahgDkJg0HcbdD3h5d4TTXTSXlDsL4mCoB1/Q8odrr9gutU9qb/OngqdI9OgQ9
         f/vOqztX06qLZ0TcxQqIZaRr0SAhz5Zt9WOXAQgO1I30ayudV7QGBko2389yNzT5ciqm
         Z3YUtqlpHyezmXn2ElKmP5W9Gp1GgyKpQuAkAxwt8vAx2HKuoee958CbGzDJ6e1DB/DU
         ad8Cpt9AKSfWT7FSYdsbEFdaBXcsaqetDh0nkNOVfvZmj2g3G8gaEenlOhG+ZaU3qkXM
         aqxyIxGT2yc9J14Z8anY6kxSVFCh6oFGLD7hnPUgrBHhFNdrS6Ccruq0pcR8IsU+KcmV
         APqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=pxBHlml3bYcDytg+X808MDZeqmyyciK89srQWZgxgZA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=d0XDxYOSIQ/DYzoruUA1EultquDWW44kEqvz2vpU/KoY/lic7cRsrOiSJ8OqsJd5hX
         Ln1xcchKCoIX9eOhco3zgtjjtg2LMxgroI2k98AbldPWLrqUnDjvnF/JSDONI9987d24
         0h7QTL/EOFdEvm3TC3vkQCQWvZyvb10N4TyKp2S9df2FpQkXKK0XT8jhpYhjP9JBUwWn
         F8wCNFZJdEXsV6z+EcEa99gJawiARkKc4ipaWK+UgkNkrGYYQ7DS8yeakaja89Aw6jKw
         YZ4WRvRycwCvS72j5xNEXGhIyNDhoRDRJiIsO/U+AKzlBS66JqcYM2mhBYgD/KUdm9O6
         fJlQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.50 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id g12-20020ac8580c000000b004199836e6e7si2062561qtg.133.2023.11.03.12.36.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 12:36:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.50 as permitted sender) client-ip=209.85.221.50;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-389-yvLF6zeRMf6dOz04AUgdGg-1; Fri,
 03 Nov 2023 15:36:22 -0400
X-MC-Unique: yvLF6zeRMf6dOz04AUgdGg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D218E1C05EAD
	for <blinux-list@gapps.redhat.com>; Fri,  3 Nov 2023 19:36:21 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id CEE5C1121309; Fri,  3 Nov 2023 19:36:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C6F121121308
	for <blinux-list@redhat.com>; Fri,  3 Nov 2023 19:36:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A190D1C05EAD
	for <blinux-list@redhat.com>; Fri,  3 Nov 2023 19:36:21 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-149-dSCF9KwCMHCp0LqTKz2DYQ-1; Fri, 03 Nov 2023 15:36:15 -0400
X-MC-Unique: dSCF9KwCMHCp0LqTKz2DYQ-1
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-32da4ffd7e5so1522912f8f.0
        for <blinux-list@redhat.com>; Fri, 03 Nov 2023 12:36:15 -0700 (PDT)
X-Received: by 2002:a5d:47ac:0:b0:32f:86e7:9bef with SMTP id 12-20020a5d47ac000000b0032f86e79befmr4522687wrb.8.1699040173625;
        Fri, 03 Nov 2023 12:36:13 -0700 (PDT)
Received: from [192.168.1.24] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id g10-20020a056000118a00b00326dd5486dcsm2554893wrx.107.2023.11.03.12.36.13
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Nov 2023 12:36:13 -0700 (PDT)
Message-ID: <ed0ebe69-64d6-427c-b5fd-18fbc885760d@gmail.com>
Date: Fri, 3 Nov 2023 20:36:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Uninstalling aur not fully installed app
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.221.50 as permitted
 sender) smtp.mailfrom=vlcekpavel93@gmail.com
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

Hi,

I wanted to install Pamac, so I choosed all by default, but some 
packages are in conflicts, so the main package was not installed, but 
some packages, such as GTK 4 and a lot of other yes. Can I somehow with 
yay remove packages, which were installed with yay -S pamac? I think it 
installed 10, 15 packages, which are not needed for now.

Thanks,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

