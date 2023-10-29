Return-Path: <blinux-list+bncBDEPFPWCWMDRBQUN7OUQMGQEETLH5ZY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id E94907DAE56
	for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 21:55:31 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6717027ac96sf11984476d6.2
        for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 13:55:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698612931; cv=pass;
        d=google.com; s=arc-20160816;
        b=AuP+YjHlCDbJxOH9qFq+QngpXI1Li1b1RxRpxBwyojfuzi1RB9uSf810ze6bUlC8ax
         k5ZHzNMIHGUKC7yv1Suo4jqmjAkw/7eoQZSI2yI11V/hbgzwvnzrl1MoVk1MRaSEQJMA
         g22QDBg+iywaYUjPJsDqDgglw1+TCeIS0amSaLS7dwFL8qkxZhF+jkRq0NbTq2lrCb7I
         AZFYnv4h1cpmvM7SH1+DlTzqe5q262HLX8r0v5YkgWbkMbT/ETxnQFkxSC+pPDHPBOrf
         5jkBuqCuFqxOJRsF4hMp0zQTfee9Fxk6l7/85gRDEqqL5E1EkU4SCUXFpFL/tv9A8I8Y
         190w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:references:to:from:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=VjKGY0UA4kG6AOwObhGSf6y2lj12XGI0rbZ0l+MPT9M=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=er80ikWdnbeUJncP3xEleZlHpKk1kc/mLUbGfMEj7bFua0JzxN/nEjgzcux51crcdt
         5woUwQj0W5I79DZhlzNsUIcnGx9Zbwx8hRbo5aBH1NUNvpEOWQhIm1oTAk5C49o3Mn9v
         X9JcfiqlM6lgM/auQfk67bv6noYtSO3Pp5xZX9R/0xB0jEn1pp21MoIwolgjJ1895dd6
         78UwRXiBSe5Kse6ax4KMEXWlDLv7mjWoMxv5TQ6trK+YJ+PcVISIpIPOvsMFYVw0QkYf
         MvnrTTx4cmcZUrqHNIhV/RQ9+eOY69LBIzkIVFmo4WjTtc5Fule5l0TZmw1EpYgKUB4U
         +Xmw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698612931; x=1699217731;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VjKGY0UA4kG6AOwObhGSf6y2lj12XGI0rbZ0l+MPT9M=;
        b=I503Vl++LtC3tG8GW6kqGA/3XiK38LZKAmIJSis1dZItB0J+tXPh8c9n3Sq/dAZoPf
         eff2qd0HLLTy7aUTg93rM6YY6tZqe/jQ6cQ4XyZRZFW0ZDFDDu+/rr/8Arg+eeHc7KgC
         FZtAQKQF46bnbixNXL/bEDATj70k5CUDb4JX0nklcKUejT9TRuHdQNBUzYwmTT3kTK/h
         Y2MLxVic2UK9wjp3qSsAQRUw2wqh+AQuIOAL0Wdghz8A84gjwmt7FuQgLdq+CIXilncd
         a8a2t9glJFWwnIUBh43LbdVHp0jZr+cXDfs9qhuLiQgq0qLPjNlqaOSA8Q5GNlczBwJB
         uH+g==
X-Gm-Message-State: AOJu0YwM8k7JpMbmolCJr+Qtg25dav4qs5SX8FAtARut87IeUxZWk2hB
	3JG3f/7SS+PdHPVdv4mFU84nxg==
X-Google-Smtp-Source: AGHT+IEi6LcowpA9E8opN9XGhQ7SHXaCruFnaYds7nBlAdR7qp6JOlezTFtfkn7+JA+Wn9k2AZ1feQ==
X-Received: by 2002:ad4:4ee9:0:b0:66d:6693:53ad with SMTP id dv9-20020ad44ee9000000b0066d669353admr8295612qvb.36.1698612930642;
        Sun, 29 Oct 2023 13:55:30 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:fdc8:0:b0:63d:1f5c:79f5 with SMTP id g8-20020a0cfdc8000000b0063d1f5c79f5ls2853377qvs.2.-pod-prod-03-us;
 Sun, 29 Oct 2023 13:55:30 -0700 (PDT)
X-Received: by 2002:a05:6214:76d:b0:65d:6a5:1a3f with SMTP id f13-20020a056214076d00b0065d06a51a3fmr10988662qvz.43.1698612929890;
        Sun, 29 Oct 2023 13:55:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698612929; cv=none;
        d=google.com; s=arc-20160816;
        b=iHxSlh5riRG7Ah8IYrd+pgvrxScmgqtF5Y5b858nWnrtRFX5aB87dgUuBWnFXj7zcQ
         IMT7r6khcBBP7Q05/DEN2HNFmvzE4bQTAqTD9NkNC5GxPkT3NyltLkWgSDZiyqqWTkId
         HnWaSnwGswpFEPFHZLKPgKW61RDqj65i+NArVCxqZlfVPvdHogxwK16KO8Yefq3fQ/2F
         auuS9eJSkwtZ8VN8YOJKEv4ojKO92wJVNkHHTJTbny4MnehVWJWw1p3S+oUQRnNcyKzX
         QKDhEEY54OBJRfOpmBBzdU3aCPr3OU+YyJzqbjKY7ihqzXbXDvuyb/rzLKETqo/GWljg
         cXpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=krFpyNqX0KwNqOg5RQnUZ9hZiAPx5zC7FewS1KsnYqU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=YQpNKrLtr2Yryh+pde6idxfU5K1veVxARSNNhrgk/oPXd644/Qg2HGXXcOd2n9bdoG
         nscRvQ5huzM3q23GDnohV8oi5kP1VvkeEJI7D+dJ8VYBZt4hrFmUatS4lw4Wnepq3pD+
         uwc8OhnTwz7lSSJfDLLHKZ/zi8lIsZBu15xQAWOFNARfYrjTFVRamdqNA7Nm9c6GDLbV
         JF9wV3qlUnhZjcT4+mNpR0n3fO0D75KVr5K4vDvwSr9H5O6AM8PGowKNDFdRB+KDLH08
         ngNkzYPw+rBuPrJKy9XIqqQc5TYRR+Wwb04fEoG7Bhf+e1oBsgvppzzuxK1hJog6sUkL
         erNg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id v4-20020a0ced44000000b0066d6b153797si2547950qvq.233.2023.10.29.13.55.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 13:55:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) client-ip=77.75.78.210;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-688-0EN9quErMQ-deAICTWQuyg-1; Sun,
 29 Oct 2023 16:55:28 -0400
X-MC-Unique: 0EN9quErMQ-deAICTWQuyg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64337380671E
	for <blinux-list@gapps.redhat.com>; Sun, 29 Oct 2023 20:55:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 6107AC15984; Sun, 29 Oct 2023 20:55:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 590BCC1596D
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 20:55:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D31A3C025C3
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 20:55:28 +0000 (UTC)
Received: from mxd.seznam.cz (mxd.seznam.cz [77.75.78.210]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-75-fi9sNBx1Pfqg03jQ3bANCA-1; Sun, 29 Oct 2023 16:55:26 -0400
X-MC-Unique: fi9sNBx1Pfqg03jQ3bANCA-1
Received: from email.seznam.cz
	by smtpc-mxd-6786d888bc-w26z9
	(smtpc-mxd-6786d888bc-w26z9 [2a02:598:64:8a00::1000:4ef])
	id 7c933e03690b6d597d79cf1f;
	Sun, 29 Oct 2023 21:55:24 +0100 (CET)
Received: from [192.168.1.173]
	(host-213-235-142-85.ip.topnet.cz [213.235.142.85])
	by smtpd-relay-75b8985f9d-sr9x7 (smtpd/2.0.15) with ESMTPA
	id 7bc51434-1fb2-4800-a0b4-541f8dbd5b8e;
	Sun, 29 Oct 2023 21:55:23 +0100
Message-ID: <cc31b550-13c4-4f2c-a4ae-fcffa364dde2@seznam.cz>
Date: Sun, 29 Oct 2023 21:55:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Esys braille display and Archlinux
From: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <34eec98c-20bc-4f28-9646-b5ae01f8b86a@seznam.cz>
In-Reply-To: <34eec98c-20bc-4f28-9646-b5ae01f8b86a@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: seznam.cz
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vsmiro@seznam.cz
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
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

Hello,

that's internal bug  in Stormux, because in Arch  on laptop it works=20
correctly. but I don't know what to do with that on RPI and Stormux.=20
I've discussed it on Stormux mailing list, but they couldn't help. The=20
cable is correct, in Ubuntu there aren't problems on Raspberry. What=20
does logs say I don't know, because I don't know how can I do that. My=20
way is only to switch back to Ubuntu on RPI.

Thanks a lot.

Best regards

Vojta.

Dne 27. 10. 23 v 8:40 Vojtech =C5=A1miro napsal(a):
> Hello,
>=20
> have someone Eurobraille Esys braille display? I have problems with=20
> working on it with Archlinux. Sometimes it connect and work, sometimes=20
> it writes USB cable disconnected and I can't work with braille. Please=20
> how to solve it?
>=20
> Thanks a lot.
>=20
> Best regards
>=20
> Vojtech =C5=A0miro.
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

