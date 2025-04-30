Return-Path: <blinux-list+bncBCV3N6GOXMCRBCHMZLAAMGQEMKLBM5I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C46AA58CD
	for <lists+blinux-list@lfdr.de>; Thu,  1 May 2025 01:45:18 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-476900d10casf10327241cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 30 Apr 2025 16:45:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746056713; cv=pass;
        d=google.com; s=arc-20240605;
        b=lU3MkJQDo3liPVPfMHsImyU68GKsCFtzCramOROPAs835adW67lUy+S96zD3In7r4I
         bfSE19MZlERtx5gixEHoJX7TsfPp0iW+VYrCFOGb5CONA3D1gi3yHB5TA1X/KNxDHyzZ
         eNnY/npujRwPDPGKov18x9+70srh9mevEhbOxw972f4oQRv0XfR1rcM60QRIlrHjaUCH
         gDZexRnM4G2GGWQY999mQtpynKkq/dbgIKaWSufXkGdovI8P3zPRzh4jK68sAsQqiprt
         mC9wCwsji1dmpLWQv6p5M7QFoN+7/uuO7IAyfijSoka9kR+vyhdmw270Ff48a+joW82t
         dMbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=FzTSCSwn2z9nI+UkgvUJpfsf2qjyfZgmlGQtj96Fsak=;
        fh=JpopkXLuE3jBX8m9LDjAVE+nLFilm5gshSTe60JArtQ=;
        b=Ah+c7PgEuKI1ncP4g77BDXyEv+FUCqDzbIgOOk4GPR+xhfXdDu7EpqI4delK0Umbid
         MryCK82bcWc9l49mw2Amn6280U2S9uYGODpJX6Av97VuH/WvF/tlJQE8eyavWj5TxWCo
         0flOLI/tJ297c+S6+KTNTqhR5QmEvjDDjx4ATOK+FcLyVHTii5wK/RipQ89bQmr8KCWC
         dlMq8JnjSVIa8TAbaVHMIu+LgwQ2TzelgwiIZrmQD9rVh5egYswtT5XXj4b6+BGWT4SA
         5scC2wxFTZXVWX+fXwETggZm9EeEovtJstuEWQFPGQEVNqoDx6GFYDwc/R0wCv87bRqT
         CwQg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746056713; x=1746661513;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FzTSCSwn2z9nI+UkgvUJpfsf2qjyfZgmlGQtj96Fsak=;
        b=vgccGD9PL116v8m33vt0BEL/kkZbOyPCtJb/0YBnlkmMCOC7aGOPuYLG3hEAqakPqv
         fu3er4UvyzVtkfVDeEQ6Je0h5Go2X2hT18RmVeKryG+S++kYaWLBsaMFsRCHTHqEfbzQ
         E6F7oda2Toz1PekWZK7e2Os5izRi3xPqEdVOPMIyq3U6UhhTJKIb8lIMViI50SMt1Z90
         9EUFLdPQVbm3TeeRmVFZecdCuoiRWVuh/X+vXMBlhbkPew+hQxXYVPSwPntUWjEwPTJy
         1uF+lwXBhuFIIOX1RP+XB9mtAAzHRDc8zEr5FHVXR0y/EhquLvx1A3VQkflva2Rm/OaG
         NDYw==
X-Forwarded-Encrypted: i=2; AJvYcCVXqYNR/75rECOFYMB3LLD4cCoHX1OAX3qacXciucWXrFDysgqe9kJimfu3Jb8mAyEwUZIsrw==@lfdr.de
X-Gm-Message-State: AOJu0YzGFUuGSDYWBZ3nV9PBQWjtlzVG5IZhKKXIDwVGP3e9S3ABn2bh
	q6oGZee8P/pLDbSZUZA4EJk+j5aeFsF6GlUZtcAKzFYKhXXI1SVXWYUYgMU00+E=
X-Google-Smtp-Source: AGHT+IGuf/7EQNEEHh3B5MQyqulNj9AD3Ynej5FNA9pivUp3fdpsXuWSGJ7eX7vy4cytVNA98O3FHg==
X-Received: by 2002:a05:622a:5c99:b0:47b:4d3:5d12 with SMTP id d75a77b69052e-489e67b4ea5mr81838351cf.49.1746056712768;
        Wed, 30 Apr 2025 16:45:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AVT/gBEVEVQ8V4bwAaRy+zgPX/njVYtDO/Rxy876PZK/HdwZ2w==
Received: by 2002:a05:622a:1981:b0:480:e761:3edd with SMTP id
 d75a77b69052e-48ad89c6f05ls7098391cf.2.-pod-prod-06-us; Wed, 30 Apr 2025
 16:45:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWKD8O+N8ZEObG0Ynk9xbqw+wCx9YJAPmfWIlO3mrTMOA6t6rcHIPxKoSXj7eBMMAlwqOtW1PrFbCQuDQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:1483:b0:48a:3824:1dce with SMTP id d75a77b69052e-48a382420c7mr45467861cf.0.1746056711352;
        Wed, 30 Apr 2025 16:45:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746056711; cv=none;
        d=google.com; s=arc-20240605;
        b=YmQIIGrG+ZvlqhN4M9QXCkfTMbPWG1ZgjzPGjr1yLycMSnXHyBVIohfoOBDlMH9Ocn
         WK/2GV5yqiq6KSnwVBueMNXrJ0ED5ZBTXXd50a4EDLpj+kR+OIXQbwgX7i7k+PDr7P6p
         iQqNXERaPjg0QAza2qAk3H9Icqw1XbgYpl8sQNgbrBooDaGB/HK9UmBeRYvXv3kogUae
         Fjc4AssIvPwyNMxWLt3qB1hIrPlJmMyZq7VB/FPHlUyap1Z2DlDK0i12a2Wlf0v8YjVR
         L5BL60sJmXDuElQrXv4lK+6KdJgyOAt35wbEiXBipj04gsqTiAIJArwnvfDVFPp/KR4D
         FFqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=OzLcPrLLftcAsBb4YV6CcjjJTSQ6BaBXRwgFc3ntvOo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=SYco07qS/woPWu2H2smSS7DV6h6UydiZywCv0U3buQRJCGvmq0emUax2FvQfPGrs/o
         gOZQcvzM/0kaerM6DDHBIIp0zgmAGFpiFPtiM5XWUh7I4VA9DzZtysBETOe4k6p42+My
         eDVO+CJbaiG4zjYn964UGb554NpRFTVNWDSn2BTLtrJx3Ts3VcQed3O5bDrgbGMR6X3H
         NkRY5Usb6wZidzWaAwOkQ6K31gt/wprK3txQAAHAiI2sxqeZ7v75ARS4qyfBkecJBewL
         ADWh7V/DntSU2/w2XWLHRU2p/LmG2ZuZAOiQ4WZ55S/cHFP/43L2e36i9bN2NFwTZhBn
         kr0Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-48b06a1912esi4483351cf.184.2025.04.30.16.45.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 16:45:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-477-CKJiGawgONaXxb6mbcAbuA-1; Wed,
 30 Apr 2025 19:45:09 -0400
X-MC-Unique: CKJiGawgONaXxb6mbcAbuA-1
X-Mimecast-MFC-AGG-ID: CKJiGawgONaXxb6mbcAbuA_1746056708
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 910DA1800263
	for <blinux-list@gapps.redhat.com>; Wed, 30 Apr 2025 23:45:08 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8D80B1800115; Wed, 30 Apr 2025 23:45:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8AB181800878
	for <blinux-list@redhat.com>; Wed, 30 Apr 2025 23:45:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 14B8419560BA
	for <blinux-list@redhat.com>; Wed, 30 Apr 2025 23:45:08 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-516-wcin5Tl4PryuVf7B-MpUsQ-1; Wed,
 30 Apr 2025 19:45:03 -0400
X-MC-Unique: wcin5Tl4PryuVf7B-MpUsQ-1
X-Mimecast-MFC-AGG-ID: wcin5Tl4PryuVf7B-MpUsQ_1746056702
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.47.142.229]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MGhuU-1uE4fF2Xuk-004Rhu for
 <blinux-list@redhat.com>; Thu, 01 May 2025 01:39:59 +0200
Message-ID: <36eb311f-5ea5-4f83-aaae-281a144ae74a@gmx.it>
Date: Wed, 30 Apr 2025 19:39:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: new machine, intel or arm-based
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <B7CE5054-8121-496A-B4C7-9B153C4D51FC@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <B7CE5054-8121-496A-B4C7-9B153C4D51FC@gmail.com>
X-Provags-ID: V03:K1:DRzppY/3s9+hgLo6/ks+vaS3jNvAy2jP/bq0u6JIVw35Bat3ReH
 YHtutiv1Q3sDXSEhkaLMG+oY95fhNH8HeS+Lts3qT4O6ASGVWluNzEjKkL4TNeBj0LmUJLR
 CdKeMo8GBjBEMbfLxJDfc/s+l3emGXPmC8dK1DpL1m/I8+dDuF7aeieT26vsLNcyPIO+vkH
 +bDXp12Q+KElzeEchzT9g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:ViOtyY8OfU8=;B+TzvvCRjVXoBI7gm5Gwl150VzL
 BtosBDAqlxv7Wf5tjMIxiY7pdXfEybypg280WVXH8pzcNppClatAvsAHHDa01yJkhWz2WpVXR
 LLQDn4fJ6neqETrPpY7RpC56s5uoZeANJfNy/H5XRZ3kzJJWLfXiaeIRDKFiDMevRH83efDLQ
 bvwmCYZwllfqTs0C2PlgUHQBPLRWPuC1GZH8NfdqB5iVo94wnG0ekGMkTDlKnHIqhKjYjrhu4
 hboqNuJXVUcpwC7Kq/t2UtDQORKNijnMkJ+3snOhicRfOsVkhshrhn18nV/UmEzLeRp2+jLOZ
 lahQB9TV9vucXxHekehC8GYnRYnYtX/ELhgopnEtQQQIuCPjGttPk5YEVNUMI2MFCwxJkig4a
 fFG4NFHMtgSvMRWHMfeA6ShD+QiqiSxfj9HH6fSpMdgdSi/f+hpgvsHQbTkX8N2B+oZ0gSudx
 E3xFMzQOkF5QmQNmaHO1P7o2YQWjPwAWaW/onnNK25Gplk0y6a79LDq5zfFQYQe4fQ6EJwO6n
 9ONzKcPuEHfAgWZetq0aOMG19v8BxppLrMkjlaV2cD5w7Ru62nGswqpcKqaeh/8WTOz/etOCb
 wUtQOvNujXdLIbVmOWN7jVz+zTaF9o8rExcB6Jt3VPZyJRTwXlUoeouoQMmQW+UaKhSn/ULLo
 jnmwGW92ccJNTiBUoavWOsCRn8W3M9B0KuCrWxm0UkKAXll9jpuYl8EbSr0d6KjaOqk0W8qav
 hcgkfcOBQrLJJAJJhlQkY3WGG7LpOZjhGG+Mjlg7AZqHVVJJMg9GsYKozAbbo/W+VjqhzkfJT
 elMTDUWXlfkmN6hlvCraUEymr/ZZ5mll/j/ETt2jM7TWHMxKenIKAdFzSF7v1PX99AXPqFmXW
 I+FoAh8WdfqiRfz79/7cLgzOS9c0mCg7LLWPg6Xine4lUsrW0jpn/NVjkj3olBPmUDXFOYv3R
 Ljq7ILfsaySl50bZQEdtj/0fDdTsacHpNgAufL6nNpmoqwQB0mwepid553DFPVjV9NWz0nAb/
 9b8mQ7L29WHM0TxSUvE5B3AJ9Naeyq71ny7SI+LWJcCk8A6HhCwGTy6M8cdsTXzNTiNsJNgP5
 jOVR+KxObSeDpx51ruoQOY3VqUQXt1LF0Y6mMZcJhmGVwpUfZRkr9FacelGrU19upSCT77iw4
 +XQN9YwlT+V2rt9q+bWdrvpyQQYCCr3a7zS14EvEeUBN58lchHic9Yc3bhEiFygKANY480ltY
 f8XvEmDrmzGGmRejngxIFIaCKPkvdeBfO3swfkkCg9pxfDKnZk0q60AYjsjt8hAnm3j/EsqhW
 1HL7SEj+tlV2r5ffnX4QmcryAb4/ysLgmCTM3AF++vzs5OMtViBIh2ALR2GDCUVSmZdiSb481
 7gWg8a8f7q7Ml5Idjoti3tFS+dxOY23jFEDc7dzD9yyCRviN4IzzeMeg2pZ7kntCBSQuR/jVm
 a+bUElXFPE535VJK+UvhTGId78hy5VaH7ododbPpYftItBqqFK+6ajiOcOjjvFXhMr8gcYRS3
 ZzfJkMTKk615R7f9+pzh14j6T8eFwCf1z5wISYHqtAhcx7pQ0QhhIgUAlPqlcU8/C40oM2OYs
 IwimKrh1f6+eKQyYBWfCtMzGucIHcJO4z2eOIjNUZf3AeJI07oA86mi+8vXccf9qKNRgmT8d1
 RnafOvdOOLCjCGxxSeDfRSzCtWRerrNzSzQnW/s4kgDeeI+wrIsBvLW/g1ySgOg4g3QUlRbAL
 n+sYd4w26/CGgOZHyhSad7R0bkoGptFYb4aRtZn3Ed5Ew6ORg70OWLYt3SPxMBq0KREbZIc4H
 j+xuxBQdwqe2V7OibdS6AWYUHigDoezOfeJaTtwjxeMUTwx9+vUSsbfF7wRfXv0z8SO2rfGUl
 J6+anRoiFRJChve9/GLpPoIcz/Cc4Re480VXKqr4HHbvt0eHoSbA9YK+5EulZv4MyM+mnJw1Z
 ZUilkxMRj+duBHUvJ7tQI4EwzIBizgWBynjiNkZoE95UkESGg5asdFUnT82qKzZy0cyEbO3ow
 59p7F+azVtBvrhmwa5hiZaPK3JHq6rjA5y4F2+6XNH5exo9WMtAoAhqNFyWYJ0ncAGIJMdB7c
 wDkI5aOs8FDxityWIOw1Y0qJMVq8xCIkid2KFfkRH9hwrb32f7NKhtmCGF9Idb9asiCTTumbp
 JjRGGrJoIXVx+FoNPS6uSXT1ylmsqKydOgbuh7YUO7jJ+12KMt3/GrSyBHajerCG3P6zZGNPF
 +F/3enhpWM9vRFZT7FeEaZNlKd+s3sh6r5TXVQfs5f1VcnnkSustgGfzldrEZrCs25nZ3dGNx
 VQ50EZ2z0K8mQkxDZH+UxuktOnJ9H8pJ8m/4HGqLDH/BTTP8Asbkz/GrHiT67EV0/PVZBC3OP
 fW2G08EzelxBUnZWUXbiKLx0RhbemuTANB9EnSJYrtUY1RroRAJyFvH2cXtj9yqicu+FH2SQE
 Lda1IOgrwCl2AXi/w2Q61TFqun2ElZk7RnLKzRz62sB+8myc+9yeIu0Edm6heinuyGnHZQVkG
 eHsokUc1sHhVeXNRzHcYuuPSxPBGm4nmKofGo+GbEKEtWx0buI4yEw9LiT1cFfswlRuUWNujm
 Ms2mge/oFAGW920CT8VDXbXv2t/gxq6ClEW0B/w9VR0HEDsu85XcQ90UPTrLbS+yaco4UACNu
 5n+SlcPwVKASRdSiEYM/POhLd7U3ru0ajC8haE5iwyW5k3tMHCUAt6tnVFAZQM1SHaaVaHAIj
 x6sfx0VTFQEA34LE2/WaX6IbjzGQq6PToqejHYd/TEnkRrbUkiajsOxGnkHjbM1sCq0KItXXN
 XKiMfNPMUkgZvKlF+ZTWVFCg5qfIjyRmb0h+j7x/Ffk184+jqF5YW8NABrVHefY9pMIygFCdW
 y8kKuJS03JRbaR/pSb/RCzyJheVOaG23f+8+zkvyL03fR0tPqzBD0xXGuJNBqyJdMw0NMwux4
 Jr42XDl5FQOyv++aqNHv1QrMYbzmmf4=
X-Mimecast-MFC-PROC-ID: RX6s5Omt35faiK6xvFSQVaYioZd0jyESx_L3V4gqcXk_1746056702
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Vf5HXA_eJFTgeffBX4AWiDHH6YYL_X-vlqbcmP80iF0_1746056708
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

Ubuntu-MATE will run on pretty much anything. Fedora will certainly run 
on a Raspberry Pi, though I don't know whether or not it will run on the 
Pi5, which makes the best server these days, as long as you connect to 
the network via the ethernet port ... I'm not sure if they got wifi to 
work yet, and if your internet is good, wifi is stable enough for 
servers now, giving you better flexibility placing the machine.


Regarding the machine to use, I personally wouldn't touch Intel these 
days, but AMD miniPC machines are still able to be had fairly 
inexpensively. Otherwise, the Pi5 is your best bet for the price.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

