Return-Path: <blinux-list+bncBDM4LSNO5MHBBZN26XAQMGQEORPE2XA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 8907EACAA6F
	for <lists+blinux-list@lfdr.de>; Mon,  2 Jun 2025 10:14:32 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a44150aaabsf6147291cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 02 Jun 2025 01:14:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748852071; cv=pass;
        d=google.com; s=arc-20240605;
        b=jpomWEqtqWH9nHlQzrY3ldGA3mshPH4L5btlX2NbULnDuuM1urRfmvkpZnymbeRUfk
         tQkgymLX13sK6tZznL6K+YFqOqB3WVoqlJF8nA3+21+urWq/7OvRvXb0Bm4B5FdoOMqB
         isnX5fhNjEp11SNjYr97rn6pLyIKtw46YMsH8uZwwrCmp/sTdX5LhILZM68NhmPEBgDg
         olFVdvAyO+03/ARHOIZd/hjQZZj6FiiBnA6H/8fOZ7AazMDb64gIxRvV9xBkaQ37tEii
         g3Ettk4OFaqxOkfFbCl6kW5HrwZXwqpGi1dtYg/ervSH9ZjOk0V+PK8+OXOSgLFIDOcL
         ZkaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=LRpqXUrkfn3Z+wk9kbKfr8cPWD5OM45mu1UIjCQ5cS4=;
        fh=CeSw5e0/gGf3OZvbnqPdglN7/hIhSwh8KVsZ8EdjbwE=;
        b=iGC+x1Aib//zV0N6VIh7K34u1/nNtaGljRLwy6hqkhgiTftbU+edxeXR9rpVc4ER26
         5dK67MtwlSt0e/Sc9LZX+KxFgMzoj/VmrMIdGMV4mU5kqSSaylo71lKNGZB8xe1+hEfQ
         Fmm910Ir0pXwbjbJoO+2ysMU7ecmSmBsmAqO0kRiTTpHFJ/kAfbyjuPaBUoejHABpm3K
         e0/3jadSrO2V6ThIdukzijl7YUXO58g1jdQBs9vcX6NBYsW3CProq2Qve+kh+vklnMbO
         SjGpBZ7PzFtVf6xH05Xibun6JnK1S/KOz/P9Ekyt4wY1dozLKmVjWozYebD98bI6U8vu
         +sdw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748852071; x=1749456871;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LRpqXUrkfn3Z+wk9kbKfr8cPWD5OM45mu1UIjCQ5cS4=;
        b=bGr7oKeRFSk3S8LhzW3tVP7IrTnd4RWH2ec3wxjYZcBfapkt6kcBAvdJkE7f9rMYFZ
         iNnX8RmJY/TL80bEuyLi2qY/XJe6aD/mzlMXp1ue+W1rExKvY1PV1yN8vdxWaj+iqKz+
         FGvEs/PAwDM1zhjtyRrDwrPwGwceaMJ8WV8vlHMmAkfdhyCe03E7h/A58LvSZuZOFsYN
         UoSteBceHdBlawI+UzPd2ac0jt55g4nDYDwfiDZVdLK65FPrMHrhZZ0W1ZaFpgT9F79w
         owHGCCFMOtF1G6vi4ZG+D22AhkBu9lyWvfB0YywPlsiKHcMiiPxKtVHs8BZsZMlVF7z2
         uAHg==
X-Forwarded-Encrypted: i=2; AJvYcCUBbUCXaZcd1AHhpO8cJ/19Nv/xWsXx9zv9uA48qbk+2FgTYHTcrrd1HgMeJJMjGeAUY6XXMg==@lfdr.de
X-Gm-Message-State: AOJu0YxCa5m4Dce6QetsR3jTEbhhXv4OjoLrH8jBHDqgObeGWpZ/F9xb
	QHaCVEPAzLnVIdkuOa1yd57Eq4doBvZjdb12pEL3mAmL7qoRS8OzhKFGo1yG6ssuxXs=
X-Google-Smtp-Source: AGHT+IGwdI4jXFkWqXlmXPnFxXf0C/QqXQ1RDs0HtGVIv+O8ymzwO2sdRrJlu1edEKRg/HhTAH876Q==
X-Received: by 2002:ad4:5c87:0:b0:6f8:af9c:b825 with SMTP id 6a1803df08f44-6faceb6e99bmr94289156d6.3.1748852070734;
        Mon, 02 Jun 2025 01:14:30 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZec6O2Hz+/XErMbapWuiB1o/TSOcUnJAIvcts2rC6sIig==
Received: by 2002:a05:6214:8ec:b0:6fa:b468:caee with SMTP id
 6a1803df08f44-6fac5d1246dls66042386d6.0.-pod-prod-04-us; Mon, 02 Jun 2025
 01:14:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWUrMeUT5wPtt5ymOxguzZBeXRk0iXnFKIHY+nQZ8cDnrs49RWZbYD/kTVTlZazraQUwVd/LvcwXHXKNA==@gapps.redhat.com
X-Received: by 2002:a05:620a:410b:b0:7c5:4c49:769c with SMTP id af79cd13be357-7d0a49ef300mr1983974985a.6.1748852069442;
        Mon, 02 Jun 2025 01:14:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748852069; cv=none;
        d=google.com; s=arc-20240605;
        b=VNoDbUzW3Fx8BMWCkEkSrRHgW2EP8NHNB/b0ow/nHrabo/GzSPRVx26nkOt1oHn907
         WXCYnKURhycGTcl7AUqKpdOpDMtKMEjJ07qAPuYXU6nqr+xrDukXog+tbUJENm1sNgsN
         PsxOVgiHOY3UFoKC0gyHb5Z3J6YR8p5M5rJATtRs8XnJBIDVHCfhpfVUjYzXIaKEg3GE
         /9ENT4VVtWB9WoxFYVvViwW/kkN3/ts14ExJdBqNNsRuJvOVFvwEXE8y/982IF1QkxDH
         AmG+XDzAUTjhYrsfI5QfbPomGjEUC3eb3jMAFk5gpCctSqw8T49E5XoZ+Rzydv1zqSIM
         FuUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=0DtcGXWJ+kPtviB67RA29Cy2L4mhBBu3HxpMqhailZo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=czawrmgq0y0qwV8qhEYiqnYhk1T7f8umzWKqAV+qEcGcUEds/hte3G5htR1mq9rbMF
         uyHVT2x+Dqw0nb7CH2WYTgBa4etB/tdOtm9sYX22Cfr++iFxWkoGTztTFRRY/pifE1lP
         feF5naPT5zNpfqytC5JmbH6jk/4e/2OU6rgwhCe0fSy0v0fYTnxgvsB8uyOQJwsKvZ/4
         aGGQklhXj7Cz35LiSYRvu9rL06j+lgsojlhFohWy4v4otdQQft+1dXzB2Y4JDn4K9Oo0
         /YCBLB03FYaQuJPUYs/TH6K2wCxDT1RcwkG9yokcnXbCB5i7hSAHIbR7IIvRkU1uhNZn
         UcTg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a4359fa4absi97655161cf.217.2025.06.02.01.14.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jun 2025 01:14:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-152-_OtA9eHLMzm8jBLaMPm6fg-1; Mon,
 02 Jun 2025 04:14:28 -0400
X-MC-Unique: _OtA9eHLMzm8jBLaMPm6fg-1
X-Mimecast-MFC-AGG-ID: _OtA9eHLMzm8jBLaMPm6fg_1748852067
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 620651955E7A
	for <blinux-list@gapps.redhat.com>; Mon,  2 Jun 2025 08:14:27 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5E3B819560AB; Mon,  2 Jun 2025 08:14:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5B70619560A3
	for <blinux-list@redhat.com>; Mon,  2 Jun 2025 08:14:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D46FA1954B22
	for <blinux-list@redhat.com>; Mon,  2 Jun 2025 08:14:26 +0000 (UTC)
Received: from mout.mail.com (mout.mail.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-605-Xdi45SdxODmh51QK-rXHzg-1; Mon,
 02 Jun 2025 04:14:24 -0400
X-MC-Unique: Xdi45SdxODmh51QK-rXHzg-1
X-Mimecast-MFC-AGG-ID: Xdi45SdxODmh51QK-rXHzg_1748852063
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([193.74.50.9]) by smtp.mail.com
 (mrgmxus003 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MAOom-1uBaBr2YJO-00HNGs
 for <blinux-list@redhat.com>; Mon, 02 Jun 2025 10:14:21 +0200
Message-ID: <af0345c7-0293-47d8-8525-b12847a36d68@mail.com>
Date: Mon, 2 Jun 2025 10:14:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: If I have a question about arch or manjaro, would that be better
 for another list, or is that all right for here?
To: blinux-list@redhat.com
References: <97CB0C36-A0B2-46A4-9491-680B80319FF3@gmail.com>
 <559649cc-2a83-44c7-87bc-595d8051da1d@gmx.it>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <559649cc-2a83-44c7-87bc-595d8051da1d@gmx.it>
X-Provags-ID: V03:K1:QzZ4PuCKxDAlIAr6SUKb0KH7+adsp9DjylrurimkxMHGXu+W08c
 ofsKgRkPgZpC+2zTeqqJb6myVgxsITn8R2ni2jM34dABfGFwg76V70xeD907HA/ZHsI96Dy
 7xTtMt21cPnD/jqlOeWoyU2nP/JQ3pVX8yvg5ghbNnQPMJitaIF8Z3KLZb8l0uOMPcTDQv/
 G88r5im+e2Z2OuzfXbYFQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:8eJLgUloiF0=;GaUXQXZZLiVtEDGksS4CdiQ54ar
 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
 fZ+G4n+/kzZS8NGHw3AfTu5tsEVxWPqFuYgr2w==
X-Mimecast-MFC-PROC-ID: NraYm2Hay8swuDbt2lb-jPNlAs02ibQggTegvUGLaks_1748852063
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vCTZYmSzYaenYctL3u1lywSpLJp7co4t2sSkvx1hylM_1748852067
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
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

On 6/2/25 01:59, 'Kyle' via blinux-list@redhat.com wrote:
> This is a general discussion list related to Linux from a blind user 
> perspective. All distros are welcome. I can't guarantee that you'll get 
> an answer, as it's based on knowledge of the subject matter, but 
> definitely throw it out here and see whether or not someone can catch 
> it.~Kyle
> 
> 

With the caveat that questions for specific distros will likely have 
more traction on their dedicated channels.

-- 
John Doe

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

