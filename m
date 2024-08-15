Return-Path: <blinux-list+bncBDYIZZNASAHRBD467G2QMGQENCCYQTI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 888F4953A6A
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 20:55:12 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6bf70b800e9sf9316236d6.0
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 11:55:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723748111; cv=pass;
        d=google.com; s=arc-20160816;
        b=NRTJw9AUMtP2A8OcSHk29HSr4c6rSZ1UsUeMNBmUvMeX96er76mpYwJKmyO5GwzOe5
         STNoXy46VxlvxCK1f6BsnSI2uc2leoTpClTw+tORRCcsbuppTwDIBjqhvmg75f62BSQi
         pnFMcVXLb35psiQAXCV39fK+01c4qeaQ/PQ4qg3CYG1O0FF4RM/TsUxXaCXm3Q8mewsQ
         kfEpy7AJS2wCDoW/ZFI1H72CiH3UmUFjm6ddllIwknLzke/xo1XEmIg0PMU+s6TYDnQ+
         wQ9xSNGJ5AtuEzkwgiHE3Mw8cm2v+3HbgITnaqF1hIe/CbFtprg99FWYyJmlfyEOhbAB
         nTVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=/Q82Ng7vg5hMCKVXSjeJ7gSU31Zel2w9ZLBLJrliSQw=;
        fh=sd9Mste4NxXrgYDJuqdZpEmNbhQgEgFXgkpiz7B4XoI=;
        b=rWz65G/Q7kcm7xiT8gkeRixhqY5GaNH1gc239bJSwFi7/g0oErx3vzGuG5PHCYqMHS
         Wgh0gyEuqXkAQUWTB2alLkRWy1yHfylrhmvwsiCcgjgo0DgXTC0BRyHIMIG5pj5zOeeS
         wBftt76bp2wBj4+wralZV38D3hLbBT93WXKzosq9QP9la2m0lUT/BbBzRqNKorh6MzJ6
         RJS/ucR8LMSho1kDSKg1cBTzUXdbllCg8OHBV7KhQNR/TyJijWzlmLcQRtWiSDZCY9xK
         hA9KThGeWVIIFY9IcGl8zkUQDtuHZ38GN10tx56JbXT9x3tHB2ufvAno73XroThg5O/t
         /aqQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.46 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723748111; x=1724352911;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Q82Ng7vg5hMCKVXSjeJ7gSU31Zel2w9ZLBLJrliSQw=;
        b=USiQETiBhrIQR2leN+iyHjy6Jtu11iDpuHG91RXVSiqb6RL1Gk3M368PfMQjLhxFc1
         cydnHKAgoap8sJCyhRWKP42RNgivZ/5yjFcTGwdbYajg4mIwCFNSyj7/MhQHEnotjDyh
         ahCExEo6wUtwISu6SAe+NHwap7IRNqBg9W2g2OtXTNx7gwTVFcLjuihfXQoPwMlgqaXs
         9K/olWcc1tRyWtlmPMfHsdh3JUm0ZyooZt+/lJ2o1FgSRhxvbtI6ca0Q6qhBLXdED9FO
         KG6mIy9XQ90S8rfzrO+TbYSkE8gRaFGIAVVuLuc9odV54Y+h8OLuxZWOxvrOXWWvT58d
         yC3w==
X-Forwarded-Encrypted: i=2; AJvYcCVUubo5gHR3Wr804j5hzhp7KOv92Vvy+YaXHNAW66umC4mp3B2/6CnCjPAhfG6Rowku+LO3ufyzGuiYpTOYI5AWvIo4o4S9+YJ9
X-Gm-Message-State: AOJu0YwoDXbIdH1T4VcaBv+UlmgNf+lcaJhNrSnAJP5HIo0tYuxMWVGb
	pgT5Daj/QUrERiAS5lFo4DOWBY58jYVMw0thIndX0XnqhOR+VnJEoF+C7Wc83bI=
X-Google-Smtp-Source: AGHT+IEownMFt3MOnoaxd3ZqVFQoU3odBOK7Yba0+V7qYaZbgagDsagXuFkegq2DCXLs8XMFWej0vQ==
X-Received: by 2002:a05:6214:4488:b0:6b7:a947:18ea with SMTP id 6a1803df08f44-6bf7cdfc58fmr5303486d6.34.1723748111274;
        Thu, 15 Aug 2024 11:55:11 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2a45:b0:6b5:da50:ac19 with SMTP id
 6a1803df08f44-6bf6d8e0cddls19973286d6.2.-pod-prod-07-us; Thu, 15 Aug 2024
 11:55:10 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXw5etvb+2CrXUs15/+Ql7EJIghlM4Od/KCYsBix475VD4h3pl9rlUzGgwexwg3PCM0WAIEmrjpocOILV828NpwnYIOiC9mHyk94FPf
X-Received: by 2002:a05:620a:24c1:b0:79d:76c3:5300 with SMTP id af79cd13be357-7a506937f24mr72576085a.15.1723748110329;
        Thu, 15 Aug 2024 11:55:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723748110; cv=none;
        d=google.com; s=arc-20160816;
        b=DmGrwpiV0oZy3HS4+c5wHiaSgq5JB4bBezACqPdI4NlRxvugCqlA77s9Sgk5mO2Ccf
         MudHMuUzjKFqJFrbBbpTckWQC+HpQsIQPfgxOCqVxXUwxLk6+JKvIburzZfLcMhC9WfC
         eeI+AfiZLFv167S82LRG9GvaaT9trXg/C/hRnk5Lyg0NjQfoxRXXaPm8qRrwf1LHX00D
         WrImGYTkkipvF/psr6BWxULNr90gl+PN3j2nb7c/0uc24BXk5yri8dGapJ/F6K2ISNns
         Yo0UWL91NK5HklIfMdJfMjjA4OmhXC254SqHOPE4dSCdF2vAcZZcHiggWdkcN+mCBPDK
         UhJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=2nSr6RfktN2YhgqhVsXKfjj+8BoPaak4NVYfPLEwKZs=;
        fh=rZvoE0wxwwgbbEUHSLAxEuBOOdH0feuiYx9dFD5VUo8=;
        b=lQvnccBedjlZCOlArv9GSCA3FIT0JNAPuh4LOGFXOrrZ5qRWn0c0cOmzRbMN2Sx9kI
         CFjRD/+Wjkw5kp9kVwGtryLcFulsbFbkkRn38c/rtrb9d8H4NuWvnVrrzSjP/x0s7yZI
         IGfgDtVea3vWXYEf8oIeKteNazscbECjFM5w1CI6RKVdGskpVybi/VnzPQhUnk3ikI42
         a2U72DAKFaXUJ5Cn9KA5FVrYYumqui+KBoVye1TMW1NleKqmd5TvCnoeshm0gmZJaKZn
         kjh1f9DE1Ql6o+g3HKWMhOMyhAGuC+2OLeGFu1EufNG0vQxkUBzkOVp9pZDfMLPUxCto
         0czQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.46 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a4ff0eb457si228020485a.531.2024.08.15.11.55.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:55:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.46 as permitted sender) client-ip=209.85.160.46;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-518-b699M3h_NrC_oRRAPw-R1Q-1; Thu,
 15 Aug 2024 14:55:08 -0400
X-MC-Unique: b699M3h_NrC_oRRAPw-R1Q-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0AB201955F43
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 18:55:08 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0660A1956054; Thu, 15 Aug 2024 18:55:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 03E6919560A3
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:55:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7CD621955D52
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:55:07 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com
 [209.85.160.46]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-569-8nfH-txFPzKxKUWxXcBKqA-1; Thu, 15 Aug 2024 14:55:04 -0400
X-MC-Unique: 8nfH-txFPzKxKUWxXcBKqA-1
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-268a9645e72so858016fac.1
        for <blinux-list@redhat.com>; Thu, 15 Aug 2024 11:55:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUH1ymxcxJ7dSJSg22kk/PnW18CQOJhVHSF0FEtZwBrSjbRjyqRnswun0UYt37UWTlUAeW+qnzHB0h9Ftd+9BCMFlm+B60b
X-Received: by 2002:a05:6870:d8c6:b0:260:ffaf:8126 with SMTP id 586e51a60fabf-2701c345f24mr505797fac.9.1723748103641;
        Thu, 15 Aug 2024 11:55:03 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-270044822c7sm493287fac.19.2024.08.15.11.55.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2024 11:55:03 -0700 (PDT)
Message-ID: <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
Date: Thu, 15 Aug 2024 13:55:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: emmabuntus info
To: Jude DaShiell <jdashiel@panix.com>, Kyle <kyle@gmx.it>,
 blinux-list@redhat.com
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
 <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
 <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
 <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.160.46 as permitted
 sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

Jude,

thanks for that.

would not have thought to look there to install it.

i did download the iso and burned it to a flash drive.

i did boot from flash drive and got orca r running but did not know how=20
to install it. after i eat i will boot it up again and try again.

 =C2=A0rodney


On 8/15/2024 13:30, Jude DaShiell wrote:
> Installer is in applications -> system -> debian install
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

