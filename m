Return-Path: <blinux-list+bncBCHY5TMQ6YERB6GBUG5QMGQEYG2BNXY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id A00BA9FA79D
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 19:56:57 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46798d74f0csf66761451cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 10:56:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734893816; cv=pass;
        d=google.com; s=arc-20240605;
        b=VdRG1wV5g/IQ6whvkh+VHDV/JDKEEqriY/eTPUMqZzREWSOrZ5eAiWc383dY2hKdoC
         xhQMEhvbYVsmg3vYaf088KSUx9StI3a7PpYp9P31iPx2mR81Gu6Tz89TvB5SvEJ3OvRX
         NQK1gOE2/516WC3QnyX74w3+eJ5CTeSsKYKcwEf8H8E5j5f9Uaiisno8Eh4bFa7Z84Er
         qJjU+7BO7XdC8ymI+JlB9q97CqG8WjoBMbyfJDDGVfC4/FSvllmy9NC5rKK7vkEzyFAl
         j3TdrryQj4EmpdIeadYtVzwZcI0cGiTgaZaLL7NIopDuK04J3Eq8g2wKs4siZIVLFzHM
         D++g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:cc:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=ySwZDBOp8QEtgwVRc6Ytiluu94aqJPIJfIZhuXSzcJs=;
        fh=iQNGCD0SjsAoTMmWThIMY6KdZN5EWwFcuTY/euDa1SM=;
        b=kWRgzge0ftVwohoKiuAqdtZrs7Jf117br0LRO5Gm+KxFi/aL3I42O3yKAMZ30/rHm2
         LoCsI33FQmG68QmnRB2ybbbP0V3G/yzoup7YPlKgg/ecrSORFnFfjVzTcalpaAlfmiP3
         lJr9Ty6xwYRQ/maJPjQUnaLNOuMVmWDqG7mKvn5VcLwfuwv1DAsUfJHz9vzrjSwFyFU/
         rLfiuMNxQmYUztKGDl257xL2EI0DnXffUNyZsfajw9IEuaY/gtLAallrsx7gYTgu0fYL
         S087slrvvkv7Rn8YsSKQjVO3pR6NwjRJd6W1oa19d+OojTZ2Bi5McX+A9xcG7tadEBzN
         mt7w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734893816; x=1735498616;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ySwZDBOp8QEtgwVRc6Ytiluu94aqJPIJfIZhuXSzcJs=;
        b=F9oQ6c3ysYiscmsbWYy7CQPXNvtH3zmf9MMdLcNKOq7aBt7w0dN0HCWHdojWFYSLCG
         sC2/zHjvolF2fXQuT8KqhsyZnNUgtxURACIkXZX2vjvhhTZ29n7JCPjP6u56ZkEHrzag
         +J6P2ouBobrZCX1ZEAEkcNpJWFq531r1FwLG6HK5YP+2MZ9VYAxzgniWOqc+IJufS1mf
         CbJqwOxE7c+h00HUhw6y4ipI+Zrp1/plz8MhS97QSVQqlYKVjdalD4sAmEU7nkS/h5ao
         xhinSJhUHnYyyVuzzdJVP8+vc4N5qX4VMvjK94IhKE4xLsQU79U4qTgXwxPavEo/qLNB
         U/YQ==
X-Forwarded-Encrypted: i=2; AJvYcCWMjItDseHeBrKDd4S+38CkYUki9jgmMMRDG9Ob3R2SfGuFQUJFZ4Qm6yGHQDBOi0iZpALXwA==@lfdr.de
X-Gm-Message-State: AOJu0Yw4NOBzwEKeWExHYPq9N5a5pKKbyLhN5FBCSxYtvu1E/gAGFF7H
	gO30a/Mzq815OiaJ4Eqt3+MYszRwEvs6iEiTGGzqu1YAvvk87I+Njt1XEXDkvBg=
X-Google-Smtp-Source: AGHT+IF6EVSOU3yPdgR3oZzo9gyhgT4cdWl0nQ+VwhJcDMBNv01luclJf+dIDJxGc/c74nowW2dECg==
X-Received: by 2002:ac8:5acc:0:b0:462:e827:c11a with SMTP id d75a77b69052e-46a4a8cb0c6mr186508331cf.19.1734893816518;
        Sun, 22 Dec 2024 10:56:56 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:251b:b0:466:9e59:9807 with SMTP id
 d75a77b69052e-46a3b15d06cls79144571cf.1.-pod-prod-05-us; Sun, 22 Dec 2024
 10:56:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXXgygxcbiGOuCzTh67Dh7ED91GSC2E4it1/8sQI0JrXTOI2tVEb6i5kMpqXDqsqnmJGPwqQT3e3JCmpw==@gapps.redhat.com
X-Received: by 2002:ac8:574b:0:b0:467:94ca:541 with SMTP id d75a77b69052e-46a4a9bebd3mr203391161cf.55.1734893815797;
        Sun, 22 Dec 2024 10:56:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734893815; cv=none;
        d=google.com; s=arc-20240605;
        b=OXEQuQK9WHRt9T9yKp29f8ZOPrF0Sq0mjaKe1TSYOuiTedy1XefvpIbFDMgoiTQN84
         M5YT5utS2xho8Fs1IksCjO+ioMl/UzuMOAJbtPuQ44n8nOnPGAvKlcmIQK6SIeDHLPsP
         E0ISUP6Adlqmh768FUD/TBpCNyIckO6nJoijp82B9txSTzU7kEHjgV/he7OWqw2Eh15o
         723XYQDUKRMj8SHoPcEthQBRQlJpSJu9qZImedyB03yX8HrmA5QdAFO6Nrb1FMFJGA/W
         gXolmyYw6XxgDM5Qk8d0Ng/wzwJIGCMScqyzYx9ChY53YmbEGu2Kk/qT0ShHUmMbUW4B
         K9Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=9X/4Zv6L528sNoal18t/d0Vlao49VFPAilMgcdKEQ5I=;
        fh=FCI8yxPeQnxQyFuVwivojld0UHHoX301fAIXZ9bOs3s=;
        b=Ifj8GqLDz3sNSa8Qq/5HjkCcSzyc5DwSMtl9qkluXmCO9Sj2jtJwRUUj8u1qybfE8P
         IkenZ2RJsKsFzb13LnsYDME/56UvF213ygby78bzQbUSoeFMXG+AmWIjJJ4s34lNfNID
         mbxrlr8uzUeA96t36up4k0cyejczb6qh6/4E+VpYgjfPtbd3MfFV5J1jYbg+m5MhRa5K
         P+1cYVF6ihO4duRQM2PgzLiL7067EEzhcn+V4flu92O5H8VMsDjt7PnkV+DyjGpTps84
         AgnIue3ax4WS7VzBzUvvdwWi4NyGu3iCCmIYrhkyjJbDc0vycsqRoELNvziCOX4Fhakm
         3NVA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3ec0656asi95429961cf.701.2024.12.22.10.56.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 10:56:55 -0800 (PST)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-630--2tbjCtJMTKv3gWar6n9LA-1; Sun,
 22 Dec 2024 13:56:54 -0500
X-MC-Unique: -2tbjCtJMTKv3gWar6n9LA-1
X-Mimecast-MFC-AGG-ID: -2tbjCtJMTKv3gWar6n9LA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7B60719560A2
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 18:56:53 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 733C619560A3; Sun, 22 Dec 2024 18:56:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 70AD019560A2
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:56:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0EFD9195608C
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:56:53 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-113-gWo1kYowPXGeUOAAXmpa1g-1; Sun, 22 Dec 2024 13:56:50 -0500
X-MC-Unique: gWo1kYowPXGeUOAAXmpa1g-1
X-Mimecast-MFC-AGG-ID: gWo1kYowPXGeUOAAXmpa1g
Received: from [192.168.1.20] (178-75-165-74.bb.dnainternet.fi [178.75.165.74])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id EE66F3F873;
	Sun, 22 Dec 2024 20:56:46 +0200 (EET)
Message-ID: <83ee3424-237f-4b94-b2cb-321c0b970487@harrastenurkka.fi>
Date: Sun, 22 Dec 2024 20:55:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: youtube issues
To: Chime Hart <chime@hubert-humphrey.com>
Cc: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
References: <Z2hB3hnS-T8uW2DC@panix.com>
 <6ba1cbf7-785a-481a-9c6f-61ca5dd3926e@harrastenurkka.fi>
 <10ee4d61-9bcd-61aa-8578-84dd82ab5192@hubert-humphrey.com>
 <847034b0-145a-4b49-aec2-aef2e3c4abb6@harrastenurkka.fi>
 <76aabaee-2e97-71d9-e903-c9eab07fbca4@hubert-humphrey.com>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
Autocrypt: addr=elias.stahlberg@harrastenurkka.fi; keydata=
 xsDNBGS9BxoBDADbD1S8nuWbRttwmOj6dvxsa7yTmvYvHzwVQwp7NPWVvi9d4VrSwSZT9L73
 JLi18/l+HoFfHzP0uSZEwSZKEW7O5d0jgk25lvcBY59th2/943Z6X55xljswNmxRJo8F2H46
 qtPKAYYs50IUPv1X98/049zMQ2wW6KT/DjMa1EsxM3vmk9Pnaq8aU/CaDvj5NcV1eJQOnQsR
 bC4MRzpJn/dDeutgDTdDLrGeWxVGN04k3fpTvJHrWAaoIGbu5LAyN0yxg931EmT7/joofoOk
 yEZDWbqv3eBUts38J2UnIux0hvgySC87cF2x9b2438m4A34ihSc90+rouvp4bS/9roxpLHWp
 57nSNHD2F3ICI3yGFkqkWDefXOPLrcMZwGvKKCHVTbmeDi6cSQAArRZMY4hyAXQ6GrHjZr4q
 d3FKTxM8eF7AGscMkLaKmMWxupKEepMj/oByq9CAES++iBllkXzyII/F1+vzjYt1s4NWBBoS
 jrk317nT/81NUnr1SSXwU0kAEQEAAc00RWxpYXMgU3TDpWhsYmVyZyA8ZWxpYXMuc3RhaGxi
 ZXJnQGhhcnJhc3RlbnVya2thLmZpPsLBDQQTAQgANxYhBM1CLl600s5yQD6e+Et3Jaf9tt/N
 BQJkvQcaBQkFo5qAAhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQS3clp/22383Rjwv8COpnhJjv
 VigvJ7Pgu5MbfYi2aWegeN5GzTnDtGWYPZYFegUzmF+dWklPJ9JYI7BsuhkIzfC2BCpRY9Js
 UaXBf2YRy3I5O1sE4a5ZPowa0dvP5g0R5c5+8GeiQPaFErZ8s3kF/bKE+HQg/Fc11QmFdG7N
 ERkAtsXu0KVrxQyrCuNJTLsljvqbfKk2ofVXO/PwRYWnbBQ8qENyur6zcFNPQSGX8IiTFnEH
 /PH3/ciS8z1j5fV5zGQYbnnMdx5AnweVJz8bgZlvuSYIAhM66tguWyiwN2EgWttK59gL3Gvk
 9DhwaJFg07AzS5dVKsf5N+TG5IIczTEGPXCn3rfLFM/zvw5bomZegjykPTUuKy5lAMbtVHZu
 mxeM4jBklGse7vBt3kWHiALylzRKiNcspNEoNFP7TtLTHJHGAQCoD3XoK0Us1v3VrjNVgmFU
 yx1VBqMbljld2ZwaJO87LJ0GaFIXYT3e3/wPpajjMWcg1P808EErcDVadhYt544AHkPKHeNw
 zsDNBGS9BxsBDAC+f17DPziGpB+usxmLkv5qTyT/YSzruBIzPJ2X7f+Ht8Fh03UeawsbiA+g
 VXxwkZusSDLrFIKk6BvrOlQAEPVHETTs3Zwmrtm5mf2CMw+BlVd32g2vKp9/07npzVdHuQsD
 d1fL6+9xUPNuSnblnGmLQ9KYCDkUnNBZu/vuPve21Z6czXZHic9XTX18sQJ5MAeuSx+d/G4Z
 u+pV/ZF1d8sUpgbaEbMWa8UBCPyB58F5zO+WYXEvUTnWTERMzyuc0j5Sl2AQGKq+o5+1bQnN
 M81DDx46m5oKpBFGyIDBNXUtUlu4CAjU9w+IkTTh5G4EePPfzlprOf4pTq5xZa/hewbW2LL6
 680Zi1esD20QkbXqQv0ODr4XuHegRZHTyI2qbsfVLL/2hogpzLZSC2rDtzxSTOMomL8G+FjQ
 j9Fx6i20eEBDdnVaadf4PHbgGFWHQTktEmJ7fldbmW9WIXbsBs1orCF7On9wOqfIVHMa5cfy
 q5uw3va1Au7qkmGHxK0U8OkAEQEAAcLA/AQYAQgAJhYhBM1CLl600s5yQD6e+Et3Jaf9tt/N
 BQJkvQcbBQkFo5qAAhsMAAoJEEt3Jaf9tt/NsOwL/iKDmHSuS1zbFz6giQ18K9RPAX+/R/T3
 f2rOdE2WCeJhb9PDIyGC5XJAno5aANJCNiXzqQ3QPA+uV6owuLVdK5GlTwYwc6YRsVYsOhqF
 1YCmZ1SEidQPmhBsjasGHtw0QkCq793seMtaYFISIxFl79i6IZ/On8646jlvcc8INdveX3oz
 SGaUI/yQm8X5Pmu4wXCpP1yLv24oPSW+CIyQ1m9jRdLC9uSma41ofjNOT/pVf7l320Tvviot
 bjRWZzAJ/LsNi/mgfPnP6PP5gpxxYmwYzfQieot+Ga/uFrIlApQ1Sa/JOVO3S21ob3YvpRt4
 oUDQkVoa927YG9+G1Cikhh1Nyb9wS3QcwZ9M92R66KejB7hmV2OdtqJDYL1jT3vABrTeWj5/
 SXtxPJGZC1u6Cm1JQxsNVw+vi1dHK8GK2hqMSi4a6LQ4sQ8NJkss35pc0tBOsso9Lgpi1rYd
 xDFBo8wnV6DogJHHb5Wxdc41lvLMxDimP2o2Hc8QCdGCRpQIuQ==
In-Reply-To: <76aabaee-2e97-71d9-e903-c9eab07fbca4@hubert-humphrey.com>
X-Mimecast-MFC-PROC-ID: jGoUDaxZuW8GLfK52SGSYo_iQL0gPo_7YMqjaAEwvx4_1734893809
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Nt8XV5l5bX3Bx-vwcip9MHN2X2TtTzdiLydu1sm8AwI_1734893813
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
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

Great, can you tell me more about your environment, what file manager do=20
you use, what browser do you use, etc., I use sway as my window manager=20
and environment, but a command line environment sounds interesting.=20
Unfortunately, Freetube is a GUI program and does not work on the=20
command line.

On 12/22/24 20:39, Chime Hart wrote:
> Well Elias, I am completely in commandline, although with=20
> youtube-viewer I like the fact of a numbered=C2=A0 menu of items.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send=20
> an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

