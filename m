Return-Path: <blinux-list+bncBDM4LSNO5MHBBO5C2SYQMGQE4L6FESY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id E48D08BB0F5
	for <lists+blinux-list@lfdr.de>; Fri,  3 May 2024 18:30:52 +0200 (CEST)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-23c5f0d5a92sf5465651fac.3
        for <lists+blinux-list@lfdr.de>; Fri, 03 May 2024 09:30:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714753851; cv=pass;
        d=google.com; s=arc-20160816;
        b=kCd+zFGd96+lNbHJaU3pRL+j/ZEjZyWVBXumrs8aWdRBWwMDIjcDLDOgZ6fBtHfLtb
         It2ZjKmFoLjlNW6jsQMG1/goV4nU1goyafUpSWtUjCBMNJxGbKiMDNdiKEQsUlyoi31O
         lA5YdfO57vh0obRxGOwYrRkBmfummJPYe5e++6RiVJaKl6jHkJXph9mQc5auvYT/CwvV
         EqIZQ9vt8Mq6LU530RprgZCUTdF7MMjr3dzneLn3qNty7LNnnTzRpBz3KpYKtFPKONdp
         Fd8cgpXG6A5gmhdmZGGxL18RfcFAG7+ThCIm+D7yWp/HJ34jx29zyDFO7fbW4AbRsvjT
         9Fag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=PY69Q6BrUt5e2qvgd22xXkrr6eI0oQmplmZ6Hx0uPLY=;
        fh=F5Z9G1AwVVip4gcJ2Hok7azYw0nllK/MY07PFhd7flc=;
        b=OfYW/8RO+5JPcmw3Ilb+jYB5kUpJkOpZnMoKcU4H5LZvCwy1epUYayPdDuGXYLUdPJ
         O7GD/iRWkvmouBtKdfht7EJp7n0bZfiKTFO0fF670sLoGZfNoE66pRu1sc1/EC4NXR2p
         RVoySaLqcTREcJ7JasQQqdGMdvmqd7/Ff04EylCpWXjYLA6BxlVU70NwtHm4aKEWTPSQ
         2Ab7pczMKIb3972qCsIz28xOmwvwNGqyGavYZ2Vm1fSQUEUkQXgOc8J68M+JTgAyNAOe
         RbNkGlh7pkgp+v/DLihgAOreg2k19tnT8MQh15uz5v1iipiN0cDPKrtA8xDxclnr4Krz
         O4Ag==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714753851; x=1715358651;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PY69Q6BrUt5e2qvgd22xXkrr6eI0oQmplmZ6Hx0uPLY=;
        b=CuOy/+Ugc/YgaaVB24CGBhJ0+Bvf0Il9dI9ApCquu7CPNi8B0fkY9m2gD/E89OTn/k
         rGZhd7D4Q01itVC0gpudadntbsfqAg4+7ovFBmwIdmDaeVUpUOgbOwnTupyzMOaMizkN
         com7RxHtuL618Pud6P1qWA645Fuab7iKSNJCk/GlzoBt08q35tJec6han84x1csKR7un
         TIrlnkwxkFU5Q9y9FFHF9KaqC+hZODUBAwwiobvampASlBlXtLewK/rIxYToIw0vIoUl
         N3CLqylYUvDIQ7jHUGz66wdG5t0oMKxtd2akWImPBI3lS49jGAkUUd36LVdhkb23pJJa
         OeQw==
X-Forwarded-Encrypted: i=2; AJvYcCV3ws2j7dVD2x1VKMRmStgGhRigDePmj40YYaIOmIiy8Sut29GSZYluTs0CQJIBxTnxQcK9g5mJUCvv3/Cu6iAdXNCe+SLGC+EX
X-Gm-Message-State: AOJu0YzOa6bxKb/I4k/kEMDiekFZJ7MoBe2RrFH6wbdN3DFk0LukYX4A
	vdXkWy7NXDxf+wnGer6KAg/NxrqIuNH9l0Ssxk6C8sgyRZHkMzinM1C233zj9IQ=
X-Google-Smtp-Source: AGHT+IHUrP5+J+At9ukjyvhQn78OB9EniN06RJvSop1g3Bh7KRwUZKHb62PB6bfLBz9YBlK/pIrW/A==
X-Received: by 2002:a05:6870:818e:b0:239:700d:61c8 with SMTP id k14-20020a056870818e00b00239700d61c8mr4188317oae.25.1714753851481;
        Fri, 03 May 2024 09:30:51 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:1808:b0:23b:4898:e31b with SMTP id
 586e51a60fabf-23dcf7e12fals2123114fac.0.-pod-prod-08-us; Fri, 03 May 2024
 09:30:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVMuVrkdT1uvYKrd/zO/jaT4vZBymVugfKjrvIQ8Kg1no7y8ZPX0ZhTVzYxdh2IIqhK8eQVBxxJ2DQc8gvVB34uVMn1LRT6LeT0AJak
X-Received: by 2002:a05:6870:8dcc:b0:23e:69ae:462b with SMTP id lq12-20020a0568708dcc00b0023e69ae462bmr2549417oab.35.1714753850534;
        Fri, 03 May 2024 09:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714753850; cv=none;
        d=google.com; s=arc-20160816;
        b=TMuTL87riuH8sb7Mhq9RFn+0wHP54oqF15UFMcEbQ+admOfYXhJYKMYBCSggJKvVFH
         dHAX68efvLSg0SuVgGWPIhpAHBoWkszx++LkaGNo1w28MVLIIy5wFrE/HFigRp7GSrqk
         OtsZ/PnQk4Vp8ih+vpdibflIOVx+SedfKBuWMoPKUFxADof04iX4yuMLy2NTY4Mm3a8D
         szIDxIACtjwTgGElAhziDkGAE8j9UKSOUwsTJ19urg5XYR3E3PtOOC/iB7f0Dn7EuBdk
         xsDOweLuEsIdEXoMrHiYH3llLOjc58aVwKwA0EGKu5dNqrEpMWR/N24oT5C5Ya+H0irh
         7nWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=c8PfTZSEtCwAlwcLnWnZW08Q5njGdjAy323FLqbzTAI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=CP5hBO2drJ6u1P8DvqZz5dhvS3GlWgVrotObhU5rQlmxV4kfEFH/GXoZMX7tvlCJCD
         CWP5w2S1qrNGARa11eTm3RfOVUqNMo5ve4DvgkXHi8myh9tV5ObvOoQNjCsEMCq9GiOB
         B8L/lQffcQOkXf0nJp9/qAttzeDYDA8I+mvgu5nglDJShbrCgAfa6XDasbIaY0BJ/n0H
         Om3V8MlW6qXhZ0i+ZOE+iV+xUR8NuwMhhqx2iDN5JEhsA8wDsD4bVR8NqhnG7Mkgh6AE
         iCCTNmu8QHlwnbI/szEGubLkwkdOrpYX6wZ5qaOS/iMYLD1mElYLQCSr891MLOd90Sz2
         JNnQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id n16-20020a05622a041000b0043a5762696asi3631898qtx.517.2024.05.03.09.30.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 09:30:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-203-CdYuHHxRNMimmHXnff0slQ-1; Fri, 03 May 2024 12:30:49 -0400
X-MC-Unique: CdYuHHxRNMimmHXnff0slQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1D4680021A
	for <blinux-list@gapps.redhat.com>; Fri,  3 May 2024 16:30:48 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id EDC31C08EDF; Fri,  3 May 2024 16:30:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B383DC15771
	for <blinux-list@redhat.com>; Fri,  3 May 2024 16:30:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 593E43C000A5
	for <blinux-list@redhat.com>; Fri,  3 May 2024 16:30:48 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-335-101oysF7O0WPsh4gK1c7Yg-1; Fri,
 03 May 2024 12:30:46 -0400
X-MC-Unique: 101oysF7O0WPsh4gK1c7Yg-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus003 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MGTLy-1rpkVp09Gi-00DvlA
 for <blinux-list@redhat.com>; Fri, 03 May 2024 18:30:45 +0200
Message-ID: <52fc8f32-99ca-4caf-a89a-1d243d174062@mail.com>
Date: Fri, 3 May 2024 18:31:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: nvda2 speech and debian install error
To: blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
 <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
 <20240503125138.ccmtstpyuyyyyf3e@begin>
 <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
X-Provags-ID: V03:K1:Cuf20uI+paqxcz+fjzQa5LXbAK3X70NfkR88dK8X2XZ7T0uVNZM
 9v/8FtPvdomTatgd2S6rD8tLcdXY5h1pE7dlHeyGnLxIxLKp5mwZhbUJZSh4F1sRSyqaTRY
 CRroN7F32+vQ3VkbLV0edAdCq8V0U5UCsmMZVTdX5owpsKRHD7m0dbY2+4S1xNIxuonMyiU
 W2fGRn2b5yGtoSaAtQnkQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:aJGmbNFO4F4=;Vy5C6oMSAsKUtuZeRiR5lVHKwfD
 9EBrEkppzNSe9kyhPMpfguaQHG6CjeqgvaXQH/KcTNi/igPutAqYAcYqbKhFoB6XL4Txdt9k9
 uoo1j2LA466XwUlCm2BGjP5cXOURj3NhR7hGgPZKV9sa7WXa6G0vz+sXLVkt8OfnEeVdZUMZY
 Q9fLT2vHWg92pV3yfbiUuSzDqpuXbEbNtxlDFb3+W4fxsRNcnLXIWvGvYQx4vJkCq0/n138Ck
 fW4eUYfq1AzIaV2hN2xBRFlvO9UPSYTOXu1saHzHl5emJRRV9o2FeyjXyMvaee1prl2MMnXZZ
 1ZgkEBYrRZNVU1MJUFvPj7npBQPQLlyTPokPSuJ/0P6AoenktZ/CB289tUn2keVJPXtoUGhyX
 i7ASXbLHaiwVZmeBWxUICdt6hAhwv/muvt1aqU4LQuUarWEgZ0/dNglU2ryn3k1wJSmi2g7D7
 HavdMO2DONuFmD1Zq79Bv+wLlw22I+hozFCYfq2YJDYEBANFjyww5M6r9k9INM2dRAumycR5r
 LmMc0XuiCLPhJiPOFpuhKj3dQzAhOvS81NIUAmmvLe912Ddc4pqbk/QeY9Z8MeGnIWOv6hDuh
 6yx5RxVi15cLKOL63mYPe0my5nRBnSue+IiCY+mZl/63rjMaEgwB+XCGccKncyB5EvxjxaCl9
 bfzL9X7P71ZqeAygiO/yGlxGpQF/ntoOlP6+DJI7JildC3s/vM6eW5cJX06vmggTNuT0VqeVU
 q80FTZEUuy/5ixuXAOks6Qai1so1WkZjQ3fZ+kbEKwVVSzo0DCy1cU1aFDcs3p3x00pEKI4II
 A0mmdQHtSIs0FW4g06z3AxmJZqC35kYFgxMaG/DW2VpXs=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 5/3/24 14:57, 'Elias St=C3=A5hlberg' via blinux-list@redhat.com wrote:
> I have now installed the required packages, but where do I set the port
> and address of the server, how can I start the server, the command
> nvda2speechd does nothing, command not found
>

By reading the instructions.

--
John Doe

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

