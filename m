Return-Path: <blinux-list+bncBCV3N6GOXMCRBKEQ4LAQMGQEFV6BCZQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E309AC80C0
	for <lists+blinux-list@lfdr.de>; Thu, 29 May 2025 18:15:39 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fac8e05bd4sf10886886d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 29 May 2025 09:15:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748535337; cv=pass;
        d=google.com; s=arc-20240605;
        b=Mp3TXzXKAySe05pbyr9rtmHop9KSvvVUp3zihZeHrNg18wySVtV+ase44ke9UPqBvU
         84HLnbBPRi+ilYc+gjK86qwr277Y5PaKhX9fXCsYsBcEs4kXq0NLUtu3YyxjOzHW5HBe
         NJpDTt471ObOyqnkL8HghkWOrcrH6cQV9kwmiSC3wiUvR6BhU8JvMCQgnUJqJsvZT1Xn
         tOBaC1y2odMtS/FtXleEV9R19qPF6XIWe+rO2NQNVCVEyT12Yvta4DAqDnK1o92PQqxz
         t2FKOhPaid1s72ylLZYWkAdteZrW8jfZj1yPvvwbb/izNyNYTz7RAli8d/FtNHhQWjwQ
         Zo9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=m/Rt2m2nhU8+tdKZLwRyl5Ol/5tOEf/iPb7RW85V2Aw=;
        fh=qAFDKNNxrhnyiJOZBZqOVllyi6xfXAFrwF6AMTAVMoU=;
        b=ZnZVnE7uQDS/65rkV5s2CSTvsT88dqPoo94Y3wMtFlBTvl9ptC1NxX6koIZZW6k6RR
         DlFCCrU/CPAO8/g5KU5bkFcI4Bsr1W/sCA9qz3HF53PQyYI8CQRkLl6XUKfShIq77S0q
         wIQDFcruCx0HOmfhXL9/wUdkLJvOnJNujsc8k1yZdrQFLI9+fCULrIUnfFLuGwz999VR
         xaGMyo/BwVKlTbZduivopiygxjyr9a2qz0dj4hsrPkpqAg5/5lMgknhfw5AappJZzBkq
         KEIkJcTAVQOVRQGNvOkD2Br9w/IT0hJ6QbYb9wzpjBN77QRW6+AfyuD7t+3KWXWZ1dhZ
         PEZA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748535337; x=1749140137;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m/Rt2m2nhU8+tdKZLwRyl5Ol/5tOEf/iPb7RW85V2Aw=;
        b=S3kRqtE/eHPjgICnMLGxtDuHB1pjiStv5XaC4STXSxstMU9EDpC1YhM9zcXYa6Kui+
         lPsahtb/wCfMILlG3flamMA3hBNtVMM7AlCD4MXuSAQBeSl7dWGn56NCnqschbZ3hUKR
         RISXWp1aCKx9PGkQhBlJh5yn+ayvKd4sAGaildQW7Drp3IifrpWGH6GHdQdaPi6KauGm
         qMz00rEbAijOKkkbWOWKrIyqcf1OHqFLpBJIgzDEmY8VxHSpXJGklhcMC9HI0KC7159C
         RaHXjMp8O8pUstzuIt6cu+T4MWi+jh/lGCbvY5vUJEOgNk69hgAuV50yIciDi2v3z6ql
         PD9w==
X-Forwarded-Encrypted: i=2; AJvYcCWTFdnYTAg0K3QPdj4g+qb0vnNWlu8uXM1j38QH50BRUrH5j8FtNM3tRN6CA/vd09DZorTtrQ==@lfdr.de
X-Gm-Message-State: AOJu0Yy9GjVHJrHuLd33qby32DRT4I6mw6XQO15HCLuALHFnfRsMH7yw
	/L4236Arm7Yadau1KNx7Q/bb/Ve+VdlcFSm22TMbi9/zbvmskWdQT5ea7GORFTHsQmk=
X-Google-Smtp-Source: AGHT+IHQ05o+0Up2FsgUDnATtEu6fyoVcNNI5pJoRGpl1LmMmobgZDSnpLXkIasM1h7l52y1IzybSw==
X-Received: by 2002:ad4:5c6f:0:b0:6fa:c721:f917 with SMTP id 6a1803df08f44-6faced58159mr2201196d6.41.1748535337073;
        Thu, 29 May 2025 09:15:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfZMueY3fNolnoV9NJUoqz0WYkz62hlnvtQ3Jwr646KZg==
Received: by 2002:a05:6214:5585:b0:6fa:c4e4:78b3 with SMTP id
 6a1803df08f44-6fac5d65a19ls15734316d6.1.-pod-prod-03-us; Thu, 29 May 2025
 09:15:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV27GT2ccXodCOnmPgOm2SR2dzAGHZAcXnTtLIf8HMj0OUg830OrnfcpjW6DsjBgruS8G12tzTWXgGMSg==@gapps.redhat.com
X-Received: by 2002:a05:6102:38c9:b0:4e5:ac94:a00d with SMTP id ada2fe7eead31-4e6e41a94d4mr167734137.17.1748535335809;
        Thu, 29 May 2025 09:15:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748535335; cv=none;
        d=google.com; s=arc-20240605;
        b=Pr2ZVscvFIyNUh8T1t3JWghWK0UyEGY7HdosKVIKvVm7CHqdZL8PHFK7ipKZMnE2DT
         mNInBY+Sg7SgS5G8hhVRswkAMSpHilGN1uw/dWA4Zosju0w1uJOfE5nfliZPXbMuBO0E
         +olzI4YjHJoLNlOwGHo3nynQ/BJ9I2Aqfonvk7e/q/8/rYJR8sWv/t08G+WV/4aCnD8p
         FHF8PIylkPBODOu8wvwAIH05rn78ytONv2P1IWgI3pFXtUfcKtC/dZdxs48uHqxLHC4R
         QwGKPgaZ8Wn2+eVXRlSXC30fmsfghkrEWuL3Qal98hWULlmVLkAedvG87hteWunxPdJj
         /8bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=tI/EZWCkAFQlEH1d8qVAr5UIjt6E1K94PUAUs8x5KZU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Cu8W0gCO3w3h0LSMsHy89by0JbfbuSjZ+to+WthDfAgB5QFISt4o3zCfimLnEZFTr/
         Jse61lZuOqQmy8xmyNnYaVG+F5q815siksE5igARAt44LLeipkmJwSQVEKhCUlUdMo0q
         Ywrxps/DlV5M93tCVc20XvqHhMr9Mpq1vsFvvvSHK96arYT/trBG+/1C3dqXTeIu6MiY
         3/Q4rWz6bDTC0380nogV5+lJ8596eoRjq8v7dCIsy3+KjEkkFFpaUhS/F/DccL7ESvrl
         VEJMRkDrBZLMgWcuhqCPtpXU2dRlbjbhpT9/T4+1oNF3NDBmcv2MjydqhlLNVgoOhA1y
         c5xg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id ada2fe7eead31-4e644421860si586245137.5.2025.05.29.09.15.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 09:15:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-157-QJr5Kqz6PEWexWzjA7uRWQ-1; Thu,
 29 May 2025 12:15:34 -0400
X-MC-Unique: QJr5Kqz6PEWexWzjA7uRWQ-1
X-Mimecast-MFC-AGG-ID: QJr5Kqz6PEWexWzjA7uRWQ_1748535333
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3EE8B1956096
	for <blinux-list@gapps.redhat.com>; Thu, 29 May 2025 16:15:33 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 08AE919560B7; Thu, 29 May 2025 16:15:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 05F0C19560AF
	for <blinux-list@redhat.com>; Thu, 29 May 2025 16:15:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7FC0D195608D
	for <blinux-list@redhat.com>; Thu, 29 May 2025 16:15:32 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-411-1s62CgAZOtK2w4vPs-5C4w-1; Thu,
 29 May 2025 12:15:29 -0400
X-MC-Unique: 1s62CgAZOtK2w4vPs-5C4w-1
X-Mimecast-MFC-AGG-ID: 1s62CgAZOtK2w4vPs-5C4w_1748535328
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.47.142.229]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MxDp4-1v4oRb2jwe-00w7aa for
 <blinux-list@redhat.com>; Thu, 29 May 2025 18:15:28 +0200
Message-ID: <411886e3-01ea-468f-8174-1fe74badc1f9@gmx.it>
Date: Thu, 29 May 2025 12:15:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: pi 400 and orca
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <66E77BE5-B80F-40CF-ACEC-4543D71E4256@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <66E77BE5-B80F-40CF-ACEC-4543D71E4256@gmail.com>
X-Provags-ID: V03:K1:+Qqxv4thnib4RIaZzHjsZCqry6ewS+JEVJxKDFQkvShWX6OAJRA
 r/KNxsX9jD3LntuCcqKmwiygAohjKAV48h7iMh/kKOqXlJ5PSd7kAGBdzCrjNEyM1B17hYq
 diSZwE9mtMY5lTd+CTQQu5xq0qo+D+T10PqjroIojRsycI2pv6YmeUGVRvAsBuaZX4wdhh8
 RepAoNsOo28i5+z3lrv0g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:d67LorS9RgY=;UqFxAQ9TRTDT6K0bDKb2eNRFW5o
 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
X-Mimecast-MFC-PROC-ID: 2Rq8caGpKZu2SeHWb97QMvvDg_gfj5YtqkXNMSmggoc_1748535328
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -vdfHUQRZUoVYZ_wKQT0cKMgHmT6qvcAbsD_jRQAUes_1748535333
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

I didn't need a monitor to get Stormux going. I don't recall needing one 
to get Fedora working either, although I abandoned Fedora 36 or 37 I 
think it was because wifi wasn't working at that time. My guess is that 
it should work now, but I haven't tried it recently.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

