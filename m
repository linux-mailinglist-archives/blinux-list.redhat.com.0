Return-Path: <blinux-list+bncBCW5NIVR6ABBBDVA6OUQMGQEIJCMHMA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id DE79C7DA60E
	for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 11:10:39 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41cdffe4d1csf41575131cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 02:10:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698484238; cv=pass;
        d=google.com; s=arc-20160816;
        b=OFYMioNsSIzplPADbMQKAFsCdys8vicmtGHWs0u8fz9KjlaZttc8kdA5CKh+vtZVSa
         YJsd1HnInm1BAnbXhFRwBj8bpivEQbS4LP6YFM4sJpE1mAB53axfurSoS8GRUXjbg4V5
         /jjc6yrpQD4w0f0WBXWvUrRwuwADxCx5NgZGjyWtGPUeJANz86H2/OtgG4hnwcLDQrKz
         mDsrnyFr36sa+h0l14zKhdjQrpTPy1MtU8WzyNrRvQX+IvPVuXkbj96oDr5aktHgGnvd
         fVQHDtN9AvZzZNcFmovkmdxUrWwNecEX0cl2FLntKgKAk2ttFcwkfyqyvZKWLMDBed2+
         Q+Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=qPCgFY+Ej8swHr8BIoCjIiRBi0wV8KSjd+tPyjseWvA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=g/QCfwf+EqFeZowVxlTtG3Jjdv72j5Aj+LwP1RZQEq7jLFPzQsmMeWwd7ASLXRpewt
         RSKxHyKFBi7sH0CzmlMJqLUu1O/t9P/tmYXIsxTAxOJWapzdimcgD7+LiXjqNsV5KMfe
         o/goCslb8bXkp1ccSd6HQtoZt22u1CD12SlIrm5NJKCWGZyOwzpP5EvSbOG6ywkBnxNA
         vgJnl3uD17iyclrMXLiiQWU2xcd7ZbQIPfNEzH2PGdgMGhZ55rOqCj2iPj5ulNgbEzOK
         Mb/XGUaeM1m03wnyDReBmJfP7aEyxUcYNv3impbIsSFrAUvz7JbLrNmpbQSKRqPpxUd0
         MLJw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.45 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698484238; x=1699089038;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qPCgFY+Ej8swHr8BIoCjIiRBi0wV8KSjd+tPyjseWvA=;
        b=rOzn1yMFu5RcnT/G9LONWMvsX3EgHRUjXWb2ZH2tlLZF9FwzNXwOCDsG+ov7bp92Jv
         WkBQWrptbyosJWmDarFYN0qo6rRkKDbOsiyxIRxcyOcfKhTQTm/FE9ADn6lNAMCE2KOq
         CWKeQvoDjINN/NlSChrNRRILFv+7EmW8eZdv0DuByyRYIlacNj6fr4z7kIH5I7Wc1K6k
         4CdzpRPjQOHa+kFjUQrrPhHR2whYYvVvn7dWcRGE+fe/8IHUIdPij9tklQYoZoGupm6v
         gM+geoZTN/OdvseQOKBGeyx/lEZi9Z4M75e+l1a/FtetLpaQ3uOgyVRo9dHmYiqDuLSR
         nrTQ==
X-Gm-Message-State: AOJu0YymMrc6F3SZmqU1Q9OBLdMOp7C/I75YGd15vfjQ5D9rE0Wcsfrr
	eueHwldGC/+z7X6/L6mcL/OlUQ==
X-Google-Smtp-Source: AGHT+IFgy1IwbkWMXedH3FDBg8TDHArjiFKIBM202/JI9ELMsaMAyZ+fvFffWae6fJgKhCZV3jASsg==
X-Received: by 2002:a05:622a:612:b0:417:eb46:f81 with SMTP id z18-20020a05622a061200b00417eb460f81mr5838871qta.58.1698484238303;
        Sat, 28 Oct 2023 02:10:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:518a:b0:419:8ce8:251d with SMTP id
 ex10-20020a05622a518a00b004198ce8251dls990651qtb.1.-pod-prod-01-us; Sat, 28
 Oct 2023 02:10:37 -0700 (PDT)
X-Received: by 2002:a05:620a:2587:b0:771:7698:7c51 with SMTP id x7-20020a05620a258700b0077176987c51mr5767911qko.16.1698484237662;
        Sat, 28 Oct 2023 02:10:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698484237; cv=none;
        d=google.com; s=arc-20160816;
        b=av2JoPpfpPkgEclwBPNFsXlmLJXaoeMAaRotVxRzEY4VFfeomgxFJ6lTiwBQL83tUE
         kVxn5rVoSKwl16/Hev2nLDp86OGLkj1LbYG/1uxO5MnGJCLf/UtxAIVFPH0AYJ++j0rh
         0w0Hnq85/P0YhnELbYk+vyxiLmPROktRTGlGgvDWbK2soimAVXuz0+oNI/ejO+SfElf/
         B5qWrhg2/uJF3YWeb5aUdQ3o6dqNO0VnFiubXTum3dVPxRTFhQfs6luGrTjPBMPl4O+f
         9zsXflQU8SJ/+PPe711zQutJNq91NzJ8XinloVobGBLA0BMw4cUhSOLTMaeQZxFRrHFv
         ggbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=FDy/t83JRzgZLHEfbgjxH8vrCpJBZE524xDiCSdZNFE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=voX8CUbzBJhFOlsATdiAdLWWgg5nrTUZg1bi0FFKTi2IMYm0RgGmXamd99Cank9IJ7
         BgTPR/Ejf0fOyoWcBJsF2+EYq3YaoY6o92dzCNLJJojbEq6sk10twH/2kc2fTiY2NT2l
         58Or+Ej6Q3iliDfC89XKDwOQglVk5HcG+XmFVyhiuFgnPvvf48AylSloYAhV5vP5H0h5
         TF/Yolh0xXT6MxBMe78BpBdSOzsnHQVphPlDFcAcrpAD9xRdlf2gYkYwes4y2omnxqmH
         YIjzeZRqTV7daKzTwU7IkE/+LvJO2cXlBvIk+rGAJblmrLHQ1dBwBqWUZUiJ8RUALQL3
         QDbw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.45 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id oo14-20020a05620a530e00b0076da64decfbsi1934793qkn.63.2023.10.28.02.10.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 02:10:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.45 as permitted sender) client-ip=209.85.208.45;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-541-k7oWTAjINq6a-SOfq8XdAg-1; Sat,
 28 Oct 2023 05:10:36 -0400
X-MC-Unique: k7oWTAjINq6a-SOfq8XdAg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED6C41C04357
	for <blinux-list@gapps.redhat.com>; Sat, 28 Oct 2023 09:10:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id EA122492BFD; Sat, 28 Oct 2023 09:10:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E261B492BFC
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 09:10:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3D683C10422
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 09:10:35 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-478-Ffr1Hy-PPF2ZMEgzgLuhQQ-1; Sat, 28 Oct 2023 05:10:28 -0400
X-MC-Unique: Ffr1Hy-PPF2ZMEgzgLuhQQ-1
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-542d3e47fd5so653715a12.0
        for <blinux-list@redhat.com>; Sat, 28 Oct 2023 02:10:27 -0700 (PDT)
X-Received: by 2002:a17:907:789:b0:9be:2be:e6f5 with SMTP id xd9-20020a170907078900b009be02bee6f5mr3864975ejb.76.1698484226341;
        Sat, 28 Oct 2023 02:10:26 -0700 (PDT)
Received: from [192.168.1.16] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id kg20-20020a17090776f400b009b97aa5a3aesm2480168ejc.34.2023.10.28.02.10.25
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Oct 2023 02:10:25 -0700 (PDT)
Message-ID: <a5271ea4-808d-45bd-b4c7-29101f41e4c2@gmail.com>
Date: Sat, 28 Oct 2023 11:10:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Arch Linux How to display optional dependencies for a package again?
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.208.45 as permitted
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

when I installed Thunderird, I get a list of optional dependencies. Is 
it possible to display these optional dependencies again? There was an 
interesting dependenci and I forget the name and I am unable to find the 
correct pacman command to display optdeps.

Thanks,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

