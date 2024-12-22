Return-Path: <blinux-list+bncBCHY5TMQ6YERBDVYUG5QMGQEBPOFIUI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7E19FA791
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 19:36:00 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6d0be4fb8sf623245785a.2
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 10:36:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734892559; cv=pass;
        d=google.com; s=arc-20240605;
        b=VFQAJIOIZkWW8N3XwQl8S7bnw3RW1suIG1BtWef70dinmh3kPu6sy2Or1+TK/mzxv+
         4fEa3NOzBe9heuJJ95WeAsq/QYRmSljhhOWb3f4jCBIDSBrGPi+RwbVnfEFtOwKBBIFg
         M3IU+CDWiEhy71/QVp+hOBuU0ufOcrTGJpPVsr9toWzKEeowaaLmL1phPNu60rO8aHiP
         wovwuRZlWZkasUhL2/uh3NEn6iyrVo4avJEyBT+QgxgArVI8f25BUGwUUKW81Mfizdoa
         q6UAujQE9eKuOcjCirOIGUEjFHI0LFFhmiDRDH4bkLVhRwFZnLL1lPaJWhuSjVg1Rcmx
         XG2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:delivered-to;
        bh=ZEJwvvYXJTWcSkuO2lTImdEsvDHfFNlAVmYdHEJPvaM=;
        fh=QF95psSTVKinKhNBL4lmIvxdP2XGpuLBNaoZKmzTgJs=;
        b=a6dMI4sSQ2acJzNVmukL9zr4zKfWg8V7mChdt7fjpmJMGZ2ibZ28N5FxAOIXANCBBc
         /sBP1LuBThUvNNChd1Ort1yLVwzhpCxrFcgmNlelPx1BFspJ4A4Eqvd/5vp1leqGsHOV
         Loseys4RJI6hVR5rT7ArxXnZMt54ySZBSPcpTAoCi/ybJX2dcWypGMeimXdVAJPnCDaj
         e7zWa7ICmBtF4HxMPM1ahyYrhmpGqpP1Paxc29DgsDclpx5R4PgryBd2rSNtZuOavOMh
         /g+hEsPou/4JylwE1z53rEd/uAWuTPEcYaf5EgG0Ub+4VsK7GnHjLl+1L7v4lEURqvnf
         qhTQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734892559; x=1735497359;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:cc:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZEJwvvYXJTWcSkuO2lTImdEsvDHfFNlAVmYdHEJPvaM=;
        b=f3rtPbOtoTlf+JRNv7MAEFkOeurFMer374yju8HFg1hflQTHe21i3WPhulFcxP6n/g
         uFqNtRCE6X0GgoBqXrPpXV9gVFScOxez6vNVqJYtrZCV9/Y2weoXLKLmHTmsea/pF59e
         2p/eFLKNUKQM2HSSrluTLZbgr8odkttLzZSZMDcKskszOgi+T8Y6zyCS0EoJrmypBJ2z
         VgeTvSfulpFec5lRshIMvzqKtFI4XmpLPIHfv57LTx//ej2d2shXX8DZu1GEjj3I80gk
         MpY0T2BsTGhVB7gSrsvyZJv6+mwMaN7ED5SRjc30WUCa4O7DJk1YQuamuTzaLqTH3fbi
         t6GA==
X-Forwarded-Encrypted: i=2; AJvYcCXXNxtAtvHdgCzACNrgHarAgADCCXBNCF5n9nJFSqmAm6J6Fi3BtoNeeVZvHq2W3V2cl0VWcw==@lfdr.de
X-Gm-Message-State: AOJu0YwqS9lIqpre+7hWkA1F81mMlCvWCllVelVbdIcBjKkVFF27Gmbt
	/ghHbBBoDBIhkxtirJc5gMAafdXMdgBKJKH+E5nsZlg2NIvVuk2/CpusbKbNm6g=
X-Google-Smtp-Source: AGHT+IEl3Y3RKF9mADz2IqqQHRhz/E2ykiRV2VHj7vih9T8usFFHBFP4FSRGypNNFgiz7awmrpsPsQ==
X-Received: by 2002:a05:620a:8005:b0:7b6:c93a:7f2f with SMTP id af79cd13be357-7b9ba733bb7mr1910205085a.14.1734892559150;
        Sun, 22 Dec 2024 10:35:59 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7c46:0:b0:466:8f66:abeb with SMTP id d75a77b69052e-46a3b177514ls71657111cf.1.-pod-prod-09-us;
 Sun, 22 Dec 2024 10:35:58 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWtKoatkOqCsj+1spBXrPkSbFEkHw+mQmK+Zp3OO+NmVFc0KKzbnoSoS3dER+fEhUoY3i6Js+t8ohpkkw==@gapps.redhat.com
X-Received: by 2002:a05:622a:20b:b0:467:7513:3d8 with SMTP id d75a77b69052e-46a4a8d0261mr160394581cf.21.1734892558319;
        Sun, 22 Dec 2024 10:35:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734892558; cv=none;
        d=google.com; s=arc-20240605;
        b=HxLrNVKzslM5EuJERwupM5FMV2dqrw1wnyFxBkpwYTawS9FWfmCN4ayfNJb5jygAMG
         YxZE4DEP1emTUwXxuqzL4fHPwrpZUQYgbVSuFRcKIfptcV+2BJZLPH5vMA5r1dm0xcPs
         F+xZtxXTt2vnntZPNWRZ5eheoOqogbMx1OGAc+2TawpoSm2LL9+B0E9eFF7ux6j2FLLe
         +xmhmi7vJo4v0cW1aUbcsCqjIxHrCVLsJ5tPVn4Y+GZ4SJpkR/vi3xJTrgVtsW/Yn4oX
         IwWaBHASfXIGq/7IH80WI4jrHW+F5rLSXY6PkTmwfMmk3zsC34Seq37fQy5Oel9BItr+
         ADQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=iYULnkks5pwocBX/vPq5ZUZJvBWrYLfTueG9o197Wd4=;
        fh=FCI8yxPeQnxQyFuVwivojld0UHHoX301fAIXZ9bOs3s=;
        b=jZ+WKRQkAlUoMtzoMO8pGSoqNSd5tLtA8u3uKkJwOUP64FiTjlCG1UxIeAVJAMFWsy
         dYMMDrMLMrBcIvUICO+WXdeovwvZL/nJqTxtHRZrsklTamfjy/GIP6/fXbgNYExYZBB+
         N96JsIWlS/4ON2ut+cIz9DtDrHGJuGhv6sRC1ou4lQTL5xkG5K8lhYYzdaFDCLsTP8EK
         O143VyejZBhZNLLPk1k2iEOGZCp5ozmCHsiTthFf2Df11LSMPRC0ggVDudEEK8wUpIkc
         eMQD6Y+ZEod+NjQRi0wqTMH1iT18UIV9/2ZBr9PAbgv9F9792KgNoZSYmChmZ4vECtX5
         Wy6w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3eb993f7si92347481cf.226.2024.12.22.10.35.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 10:35:58 -0800 (PST)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-547-57BWUMz1NkmoklMDrLreJQ-1; Sun,
 22 Dec 2024 13:35:57 -0500
X-MC-Unique: 57BWUMz1NkmoklMDrLreJQ-1
X-Mimecast-MFC-AGG-ID: 57BWUMz1NkmoklMDrLreJQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4A72B19560AB
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 18:35:56 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 444381956088; Sun, 22 Dec 2024 18:35:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 41F701956086
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:35:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B9A0D1956089
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:35:55 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-183-vHwC9BEcPT2HAmc7VshhnQ-1; Sun, 22 Dec 2024 13:35:53 -0500
X-MC-Unique: vHwC9BEcPT2HAmc7VshhnQ-1
X-Mimecast-MFC-AGG-ID: vHwC9BEcPT2HAmc7VshhnQ
Received: from [192.168.1.20] (178-75-165-74.bb.dnainternet.fi [178.75.165.74])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id F3D673F8D8;
	Sun, 22 Dec 2024 20:35:49 +0200 (EET)
Message-ID: <847034b0-145a-4b49-aec2-aef2e3c4abb6@harrastenurkka.fi>
Date: Sun, 22 Dec 2024 20:34:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: youtube issues
To: Chime Hart <chime@hubert-humphrey.com>
Cc: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
References: <Z2hB3hnS-T8uW2DC@panix.com>
 <6ba1cbf7-785a-481a-9c6f-61ca5dd3926e@harrastenurkka.fi>
 <10ee4d61-9bcd-61aa-8578-84dd82ab5192@hubert-humphrey.com>
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
In-Reply-To: <10ee4d61-9bcd-61aa-8578-84dd82ab5192@hubert-humphrey.com>
X-Mimecast-MFC-PROC-ID: JSdDZ5T0Xmgj2G0WUgLc0iUL2avAd3L0opnLI5y3ffM_1734892551
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: MemsNnwIgrR60dueeGxDaqSd5kHQoNXMUbTmDIjDFsA_1734892556
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
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

Interesting, I use wayland myself but that software also worked during 
x11, what desktop environment are you using or are you using the command 
line entirely?

On 12/22/24 20:12, Chime Hart wrote:
> Well, thank you Elias, I downloaded-and-installed a Debian version, 
> but I get a seg falt when running it. Makes some reference to x11.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

