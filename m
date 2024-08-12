Return-Path: <blinux-list+bncBDYPVTOXSQEBB6PL422QMGQEUXZAIIQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 468C294E77F
	for <lists+blinux-list@lfdr.de>; Mon, 12 Aug 2024 09:12:59 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44fec9b96fbsf40868161cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 12 Aug 2024 00:12:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723446778; cv=pass;
        d=google.com; s=arc-20160816;
        b=vuiIdN1LUbIg/bK1T0scS4jSkzEgSq5R+GrUgObxIwRMIrnitpfARTti+TTJjjBDM9
         E7j+AyfH53wGc6ZwcyQPk5hsoQhydjs63qbsq4Aq7r/l2aOyKPPGddJR7FIex07j24Fw
         PUOmSXaboKgURe3oZjsKtyiTA7O4VmqUfcZckgKx3f6BLb+aaeU2zpArZOTDk5ku7iW1
         r63rgNa8GpRD0yXEcurnW+OHXOXLu3ReihHj5vFR0qHtVqoP4/rtfegt4ZnvtL7JurlY
         p6rVQlMWvWuQTv4arEzyQ3mSIYWXzeOWQ8wWiq9vt3z8V+EqHIt2DKalx3ALLi4tyzBN
         829g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :message-id:subject:to:from:date:delivered-to;
        bh=njtuEJPz76pSdATO95TpPWUNylmsme0u3OvQGOREiMk=;
        fh=MmQMN973D6egpy12+HJqsAHN5l+DEO5nCuJhuwBc3YQ=;
        b=SJI/0c2HPHdPbN5com3F2iUdjXKEA7aoGPqW/kP8vsp3f/Kpu7PahpVf3i5Yz8HQLB
         rLeQ9zOv3JkQlQb6hkS5KRxBEL4rpCtngv9yKyE5AlwyXWEJ/76llHXfq2nyAfl/Jfl3
         DzqxqZphPnr4P7aRuMX6eDcYDxV36BnlM8XkYkVgbk78k51IAu7xZ3fUFQox225V2DYw
         sdd/MwBCT/Hxq4wApb/UE4q4s9A38bb2ckugsPidSe4WhNTp06Xcn3j+xDF6OtK9VFkT
         gwDc5mMEOihvE1hBvlJY2rRE8R8cCNrDAiTAsQS8/Ww+8NNJdtvy8wu42sCotEPocrHJ
         PfQA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723446778; x=1724051578;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:subject:to:from
         :date:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=njtuEJPz76pSdATO95TpPWUNylmsme0u3OvQGOREiMk=;
        b=P2X6qpu2sO1phWdtYtRse/3vVGoj8c3noDLov2hBp0mTKAeP3zISZEWvDlpOzwmA2B
         Z6hirhn1f2+0mY6qZvNFeNWQ11PT8EeUzVMVxlYFlmAmYnd5hMV0+gpG68iUNDR62DjN
         m773Q1hyf1mPmr/FNSKiiVvX7ovA4+59OId904tk5RVZjUgujcVeuvvnrkt8WzSzuFws
         8o9bj8wyl+vDeBzhvYdbbU/p7Fs+qDZ2lI+ggMZ0rYkF0ED+u8d6AHdzEe+UZENqVHgT
         2KxMci0cVUxro+oR/nIEPFlwdfx/gsKXAvmTzbl9W79vsCkqKdGRLh6pkoxtzr9fm9ww
         BsKQ==
X-Forwarded-Encrypted: i=2; AJvYcCU5azEe7fQ5B9YzbNsUYL1whfetyDcfd8n9L5OmdYp0Mp4PGvLDtW6yGRpk2ehn6C+5seAQi3RSnoqGGrD9flK33k9l4FrQzOYX
X-Gm-Message-State: AOJu0YzZ7JfnU4lVa475G3TFUQB3VXl3ifaIzC900LhwsNy8m5XsnRTQ
	/h/7xxyFyyai80Ljs4GARofTPs8aheeV/vXF1xXN5GaZmGf+eB9om7BETLFzNyU=
X-Google-Smtp-Source: AGHT+IE6PTc3rPN2Py/EnMOWhoPM/s/cE99o9q4QJQ3DBJ25EIicNyQs29/hW+Ia6ievPC46qUme2A==
X-Received: by 2002:a05:622a:5c06:b0:447:f9b2:6c50 with SMTP id d75a77b69052e-453125b66dcmr86784571cf.33.1723446777808;
        Mon, 12 Aug 2024 00:12:57 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1492:b0:446:4642:4f5e with SMTP id
 d75a77b69052e-451d12fbe1cls52527511cf.2.-pod-prod-08-us; Mon, 12 Aug 2024
 00:12:56 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCViFHJJnh7af4NOP2hDw3zmA9hLTdu7DwwYp0MBwEz4Exw4T3fbGMrZmKutxQZ9xonkAhl/Zv3zh1x1mvhj9qeBfrVMkeuG23kimBbE
X-Received: by 2002:a05:622a:1cc9:b0:43f:edde:7a55 with SMTP id d75a77b69052e-453125a7282mr78909191cf.28.1723446776772;
        Mon, 12 Aug 2024 00:12:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723446776; cv=none;
        d=google.com; s=arc-20160816;
        b=z/7j/MisaaviN3Aj5i7d6WX2hdOXhdxP9sf8vv9kiaPPNqGTAlktTAFJlqMscGi955
         dtZ+fiyEn4s4ZXOUWEP/sXAJtm+Qb5IcHVMoiPzHOCA5BWBgdYi6RYj/LT1ZaZ2rW8Rq
         g/fFqmMR0xFK2KmGtaL3Es5nTUH8Qw9nUJgKpbWZ7rI8CV24I3T09Y/AwA56CEsdfqtY
         mwwgNoGLVQf4uuv8sRJd8JWsP6TTq5j0aVrcZa3R/d+kfTLGYBu8llJf3loDLltk2Owb
         RaEM7G/BVK+Zpal75SeITRvYjpco1975gSZIcPZ6iQiSulfXl2Dy7AQSczSOQ7lkEZP3
         eAeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=58lAqyvZegl5a6J1jEhlRfRx+D6bbPvkgokp/jnxbZ8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=m/D5xJy+xqfGXwdhuUfqzvhaP+B8z/yDFCchIhTho3poQvLlujEmFhALtECX1kLq/E
         VW9cHZL1hd7GdjWx/s8Scznov8C68ZQ/TVHAwtN9VSLowgDoVy3XiWHA+q2fCgwbe/bx
         qoB3zMiw/NvL+9TR/97yhFMF1MlvF98VvlcclaK7dW/BTUm8I+XjxrXiBrDT3bhQahnr
         ooTWe3xhA3iYWjiYZp68pVLZScDCLfg/WzR2aAdZRo1DZtXz6X1DmIsC4Kdeslo3M5zd
         z7J5oQwcLtgcWdG0md059fFp9NviyXdebs09zPoCJWZaua1m9kCoT708o6oD4BUYRi0w
         qAhQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4531c267cfcsi53285051cf.376.2024.08.12.00.12.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 00:12:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-457-dfqU4I3jPOO0kGlOpWQ63g-1; Mon,
 12 Aug 2024 03:12:55 -0400
X-MC-Unique: dfqU4I3jPOO0kGlOpWQ63g-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C0A3919332AA
	for <blinux-list@gapps.redhat.com>; Mon, 12 Aug 2024 07:12:54 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BB80019560AA; Mon, 12 Aug 2024 07:12:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B95B819560A3
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 07:12:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 51C6418EB226
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 07:12:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-296-pt-7CrvLPuKuBdqw11tFxQ-1; Mon,
 12 Aug 2024 03:12:51 -0400
X-MC-Unique: pt-7CrvLPuKuBdqw11tFxQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Wj5M748rnz15Wx
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 03:12:51 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Wj5M73xYRzcbc; Mon, 12 Aug 2024 03:12:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Wj5M73rK8zcbC
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 03:12:51 -0400 (EDT)
Date: Mon, 12 Aug 2024 03:12:51 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: =?UTF-8?Q?The_Linux_User=E2=80=99s_Ultimate_Guide_to_Text_E?=
 =?UTF-8?Q?ditors_=28fwd=29?=
Message-ID: <c8f568b3-797f-cb9a-7e71-8cd8a6f7227b@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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



--=20
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

---------- Forwarded message ----------
Date: Sun, 11 Aug 2024 18:17:17
From: Jude DaShiell <dashielljude@icloud.com>
To: Jude DaShiell <jdashiel@panix.com>
Subject: The Linux User=E2=80=99s Ultimate Guide to Text Editors

jdashhttps://thenewstack.io/the-linux-users-ultimate-guide-to-text-editors/

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

