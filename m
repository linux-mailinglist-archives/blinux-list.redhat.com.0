Return-Path: <blinux-list+bncBCMKFVG4RQEBBSNYYTBAMGQEAFYNANQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E687ADC398
	for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 09:42:23 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb2494ef24sf143866776d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 00:42:23 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750146122; cv=pass;
        d=google.com; s=arc-20240605;
        b=I2SENR6O9cRlOgEcSY7jpL8wl8Q++3Hk9RPV5XHLzOxLlUaUjZ8wYT/uIKhkNj1wRa
         3wUlbUdpOxO6v0Eg8wioCR+uhjdHbPPWmVxn1nTo3O2uBkVH8prkMpTA9QpO0TXwUI+V
         ofqEfJTIfvKNCzja8b0mn/Y17x8vdASk+dBmqnsPC5tm2t3Q7WI/3gtEqXGJvNbcmmtG
         PtPjnetsAUEcLldQ4HIroHYcO9BpAkSZzxVWQc6VzVBIjpzZV6m7GBH3z0rBoQg2CF30
         7ZW+lImiyQW49rruV5t7cDeqdNlxWgm2wxSATpTF2V/bVe5/X+XqktPxKmH9yqIR5rnq
         gAXg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=fFF/NUlAMg2MaA0YODgNF0EJIAc2b55I49X5JsyXfrg=;
        fh=gesKo6y9RM8ER4tTTFr9/X4LXA6RjaZOoxTSpR89lYk=;
        b=L9U+o9q+MEK2dZ4bZNWZuYfInTemcrRH4ssi/XdLFUzKl9CXKtQRxAua/QQw7/+x62
         1i+SgnD5oux32PdxAtZINtkBdPVD6Iwo0QZ0NimzvX2vQypGB+Lrp52d62vCpGeE1JzL
         W2fUuaVu+4Xq24Mrj5+oqwipg5Y43xrWlI8BRSnA3i5fdeHEbQqLAubYWXhShS/lMjSn
         fLm5wKw/SQhc0A4rCHOgd0Hj3xQIzvkvZfyM7vl6I9wAtxuIrtqVovg0XDfX62fSYAAT
         QvXJFEgahQQEP2/RZnw33IwPu/03308bHfLcPkX8Qv+j8zxG20mmGYLEXZJT41GXF2Np
         601g==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@slint.fr header.s=default header.b=SJwyer5M;
       arc=pass (i=1 spf=pass spfdomain=slint.fr dmarc=pass fromdomain=slint.fr);
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750146122; x=1750750922;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fFF/NUlAMg2MaA0YODgNF0EJIAc2b55I49X5JsyXfrg=;
        b=lOq0cgIm0fblF0maKcYD953L66lEg+qFf99+7+AUNasvahOK57hssZZnmj3oEY4Gyo
         gaoUJhMhIU3oehp+eEtFeYpVvyOuHcNBsGgLMG5oRtlyFy+wYuzjFrCc6qwjXJjk4Nwi
         HjuX+koPm/pUN4IbylKGJfbC+F3xfgGY00hEGWVAVdiL8b9VQdhkPHm/Hqs8Ut8It+wI
         pIqeMrgVyrjA9Fy4TcdZ6U1wINgOiWij/xh3u+MRj+SBV4Ufe9qropHF0jy91iRTyB0v
         XWPi/Wn1lJFg9lkEVjwsGZ+60b8ao774Blz2tSSBJrbnISY+PM1Bz1rwUE52jq50SpYM
         FnLw==
X-Forwarded-Encrypted: i=3; AJvYcCUheIZxZxuO/dF1t3l1tt9IcLuav+RNkt1Ais42bgOGfxMDAqRVwiHR6C9JX7WBYsmEpFMaCw==@lfdr.de
X-Gm-Message-State: AOJu0Yzrcw9os7KLKtYEH/0/ltiFXtLlVSbW82CHRuxOzZcDIzfNQRPd
	uDzgQEYg2RKY/PF10ztJb6E5Uh2uYb6IWUWjoyB7efpFR2W9jDY6MLVAIiNoMbiedRE=
X-Google-Smtp-Source: AGHT+IEoe5PzhZh+/kepVpCTGAA/vmUuB+GLnLpPHFA36C9HqDB1PQl+S81WLr2YMyQS81Uy/F5sHw==
X-Received: by 2002:a05:6214:5018:b0:6fa:fb25:e0f1 with SMTP id 6a1803df08f44-6fb477d99b7mr159114366d6.24.1750146122193;
        Tue, 17 Jun 2025 00:42:02 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcwRkjqVWAZ7Qg8zr7I/7Awqy4YfJUOvHZMBAPbCGFmYw==
Received: by 2002:a05:6214:19e5:b0:6fa:bcf6:6723 with SMTP id
 6a1803df08f44-6fb35562988ls82963876d6.1.-pod-prod-04-us; Tue, 17 Jun 2025
 00:42:01 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXHjVmL2Hpmp24qtzOGgp8XJ4F2ahUYrreo9DHLjoUwqrKxn8Ssw+q9X/a8q4vRoAMXsrUHIvWG1hnk2w==@gapps.redhat.com
X-Received: by 2002:a05:6214:ca7:b0:6fb:62aa:29f2 with SMTP id 6a1803df08f44-6fb62aa2d65mr5981836d6.10.1750146121213;
        Tue, 17 Jun 2025 00:42:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750146121; cv=pass;
        d=google.com; s=arc-20240605;
        b=DEdcANTNRmdtf95K9448g7MiIFpsMtcqFTL1C/RD0LX/xZAZSUR2KwbTP7PTaky3kM
         qxisNOInOQSESINCkQuWCmg6FWG8jqdgNXeG+MZuTijQ+qOhK5bukCCTHJigGCH/3SEr
         Nd7blXPXmB6cM2Wam95RPbpMLLBaJw7JDENFvACepqAuyAqGv/ajscPN0+wwe4HFY7+z
         ltQBHLwNOhi43w01PSauH0u10DECIhK62zAbnL9ilvHGIhArlSxmgLMuM3ZVBRYVnI3N
         PUq63Frlii0UbsgBRndXDsPyo5haErCmREi1OwV5PUoBtXPULXCfQvKfy0owmxCKziDp
         0XWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:dkim-signature:delivered-to;
        bh=tAVC/iuwNC2w4rgczTrvqvxpue1IUzRCP87InxUsiII=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ICW444sPQxjFyAlhzWN0iPHsXQV29GHLNcJwozsGkzLPZ3SIjhckk+xymUm8LT+6sm
         8jje3H14PmIx9eL+N4OkLw7s4I/paF2ctGkNnJOBCyuTIYRQ4Nkf2bz3E5eThfxZYSoM
         aLTbS7bXakOdMlE5yE6JA/gnmyvWZ33KM2XAjjGKp/mCRFHKqdxfTXH+G6822ARkP98P
         FZLVgdiUKrUIAWZei8m03LKgLn9mHD7HfeIffyPG3dnkD3b79RGxgQaNM7GIheZW6zaG
         CNpF9TBpCtmN7kagjepRcIuf1whIxJwfPAIgwglNo/yXMZ7EAGrtlCHtxxqdPV2FlbB1
         ltiQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@slint.fr header.s=default header.b=SJwyer5M;
       arc=pass (i=1 spf=pass spfdomain=slint.fr dmarc=pass fromdomain=slint.fr);
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-6fb55640661si44299646d6.221.2025.06.17.00.42.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 00:42:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-460-AZbR29amMDW5D3JdE4mqug-1; Tue,
 17 Jun 2025 03:41:58 -0400
X-MC-Unique: AZbR29amMDW5D3JdE4mqug-1
X-Mimecast-MFC-AGG-ID: AZbR29amMDW5D3JdE4mqug_1750146117
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B5F75180136B
	for <blinux-list@gapps.redhat.com>; Tue, 17 Jun 2025 07:41:57 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B0BBA19560AF; Tue, 17 Jun 2025 07:41:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ADC3219560A3
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 07:41:57 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4B8C719560A2
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 07:41:57 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750146116;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	in-reply-to:in-reply-to:references:references:dkim-signature:autocrypt:autocrypt;
	bh=tAVC/iuwNC2w4rgczTrvqvxpue1IUzRCP87InxUsiII=;
	b=I6qULrMnEoUzZgOuDBiS0wzN+kYsPwM5mptyIeuNz1x4h/Bcy2j9I0InsoyQCaSDxzj5dy
	HmKyUlaQXH/uSpF5aKvH+6QGTwqunpjzvifDp2AjvP7U/I2cHScxaqKm+PbC5IdhEMwt9J
	coGwgKT6McS+EwEyKX98PKk6LFPMFtuUlB1UlujwNstnr6z+L+0bqqXjJhNqwI4+1u0R8D
	jYN29PaQfyCpq9THfBnM6QC4NH5cdMsOZ+cyVuKpetwvsB1Llwkl+1gSqhvID1eHR04di6
	z5Y+zsgZqpXm1o8miwOlCsxvfDmM4vzIyWx3EvCLeZaNcIH33woAlTpWJ4hfjA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750146116; a=rsa-sha256;
	cv=none;
	b=VaFpIJ5OeLcYIoQyfY+V2AzwbRgBLkidf/VrSiISXb6KbBGcZNSeUMQbQl29qlrQkedEIL
	upMVVGMNqkMK9pNceI+8yz4tH5WJI4dTjR5pPN8IHam9lR/HFejavw9HZBQhl32OfYIV3m
	6mQYHerd8oZMvtFbdiEabfcbsOtIjJb/xr8BZuz+OITTS111uanp0uGc33ZL+S9992zzeg
	zXMuXExRIKEFbliLz0VuVJcHyCO3bccgb4ZYhOfzsMzMAo1kwEL1QslYQ76orNUpTZl0n/
	XPaCbtFI94qBQ3EeKCVTNdSLOX/bbo5YXpD2luQ8IW0lYpi/BUelBRoKKsOp9g==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=none ("invalid DKIM record") header.d=slint.fr header.s=default header.b=SJwyer5M;
	dmarc=pass (policy=quarantine) header.from=slint.fr;
	spf=pass (relay.mimecast.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-392-vx1JrMcDOfOR1tomK7rUgA-1; Tue,
 17 Jun 2025 03:41:53 -0400
X-MC-Unique: vx1JrMcDOfOR1tomK7rUgA-1
X-Mimecast-MFC-AGG-ID: vx1JrMcDOfOR1tomK7rUgA_1750146113
Received: from [192.168.1.186] (128-79-193-9.hfc.dyn.abo.bbox.fr [128.79.193.9])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C26EF160319
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 07:31:36 +0200 (CEST)
Message-ID: <7de453ae-38a6-4202-ac8f-c395eecc03cc@slint.fr>
Date: Tue, 17 Jun 2025 09:32:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: mate desktop on arch
To: blinux-list@redhat.com
References: <17CF0AB3-0ADE-40F7-8C1B-076BF5444EEC@gmail.com>
From: "'Didier Spaier' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <17CF0AB3-0ADE-40F7-8C1B-076BF5444EEC@gmail.com>
X-Mimecast-Spam-Score: 1
X-Mimecast-MFC-PROC-ID: PWyQMWdVLovdyh1rzc0Fg1sKhDvvhr1LKW5MRoc5ZIc_1750146113
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/mixed; boundary="------------fqp79Gyx9p7rWEDrus9XodHG"
Content-Language: en-US
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@slint.fr header.s=default header.b=SJwyer5M;
       arc=pass (i=1 spf=pass spfdomain=slint.fr dmarc=pass
 fromdomain=slint.fr);       spf=pass (google.com: domain of didier@slint.fr
 designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Original-From: Didier Spaier <didier@slint.fr>
Reply-To: Didier Spaier <didier@slint.fr>
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

This is a multi-part message in MIME format.
--------------fqp79Gyx9p7rWEDrus9XodHG
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

You do not tell which distribution you use.

In Slint the script session-chooser (attached) is used for that.

To use it, just type:
session-chooser mate
or
session-chooser i3
This can be done from a console as from a graphical terminal.

It could be adapted to other distributions.

If someone wants to contribute to such adaptation, issues and PR can be filed
against
https://github.com/DidierSpaier/slint-scripts/tree/master

Cheers,
Didier

On 17/06/2025 03:37, Daniel Crone wrote:
> On an old machine with I experiment with, I have the i3 desktop.
> Now I have downloaded the mate desktop and lightdm.
> I still want to begin at the console all the time.
> i3 runs with nodm.
> How mightt I switch to mate?
> And if I like, how might use i3 again?
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------fqp79Gyx9p7rWEDrus9XodHG
Content-Type: text/plain; charset=UTF-8; name="session-chooser"
Content-Disposition: attachment; filename="session-chooser"
Content-Transfer-Encoding: base64

IyEvYmluL3NoCiMgc2hlbGxjaGVjayBkaXNhYmxlPVNDMTA5MQojIFRoaXMgc2NyaXB0IHNldHMg
dGhlIFggc2Vzc2lvbiBzdGFydGVkIHdpdGggdGhlIHN0YXJ0eCBjb21tYW5kIG9yCiMgd2l0aCBh
IGRpc3BsYXkgbWFuYWdlciwgdW5sZXNzIHRoZSBzZXNzaW9uIGJlIHNldCBmcm9tIHRoZSBkaXNw
bGF5CiMgbWFuYWdlcidzIGdyZWV0ZXIuCiMgdGhlIGFjY291bnRzc2VydmljZSBwYWNrYWdlIGlu
IFNsaW50LgojIFdyaXR0ZW4gZnJvbSBzY3JhdGNoIGFuZCBkZWRpY2F0ZXMgdG8gdGhlIHB1Ymxp
YyBkb21haW4gYXMgc3RhdGVkIGluCiMgaHR0cHM6Ly91bmxpY2Vuc2Uub3JnLwojIERpZGllciBT
cGFpZXIgZGlkaWVyYXRzbGludGRvdGZyICAyNSBOb3ZlbWJlciAyMDE3CgojIEN1cnJlbnRseSB1
c2FibGUgd2l0aCBsaWdodGRtIG9yIHVzaW5nIHN0YXJ0eCBidXQgbm90IHVzaW5nIHNkZG0uCiMg
TGFzdCByZXZpc2lvbjogMjkgTWFyY2ggMjAyNQpleHBvcnQgVEVYVERPTUFJTj1zbGludC1zY3Jp
cHRzCi4gZ2V0dGV4dC5zaAppZiBbICIkKGlkIC11KSIgLWVxIDAgXTsgdGhlbgoJZ2V0dGV4dCAi
UnVubmluZyBhIGdyYXBoaWNhbCBzZXNzaW9uIGFzIHJvb3QgaXMgbm90IGFsbG93ZWQuIjsgZWNo
bwoJZXhpdApmaQphdmFpbGFibGU9JChta3RlbXApCihjZCAvdXNyL3NoYXJlL3hzZXNzaW9ucyB8
fCBleGl0IDEKZm9yIGZpbGVuYW1lIGluICo7IGRvCgluYW1lPSQocHJpbnRmICclcycgIiR7Zmls
ZW5hbWUlLip9IikKCWVjaG8gIiRuYW1lIgpkb25lfHNvcnQgPiIkYXZhaWxhYmxlIgopCmN1cnJl
bnRzZXNzaW9uKCkgewoJaWYgWyAhIC1mICIkSE9NRS8uZG1yYyIgXTsgdGhlbgoJCWdldHRleHQg
IllvdXIgZGVmYXVsdCBzZXNzaW9uIGlzIG5vdCBzZXQuIjsgZWNobwoJZWxzZQoJCWdldHRleHQg
IllvdXIgc2Vzc2lvbiBpcyBjdXJyZW50bHkgc2V0IHRvIgoJCW5hbWU9JChzZWQgLW4gInNALio9
QEA7MnAiICIkSE9NRS8uZG1yYyIpCgkJZWNobyAiICR7bmFtZX0uIgoJZmkKfQp1c2FnZSgpIHsK
CWdldHRleHQgIlVzYWdlOiBzZXNzaW9uLWNob29zZXIgPGRlc2t0b3Agc2Vzc2lvbj4iOyBlY2hv
CglnZXR0ZXh0ICJBdmFpbGFibGUgZGVza3RvcCBzZXNzaW9uczoiOyBlY2hvCgljYXQgIiRhdmFp
bGFibGUiCgljdXJyZW50c2Vzc2lvbgoJcm0gIiRhdmFpbGFibGUiCn0KIApbICQjIC1uZSAxIF0g
JiYgdXNhZ2UgJiYgZXhpdApzZXNzaW9uPSQoZWNobyAiJDEifHRyICdbOnVwcGVyOl0nICdbOmxv
d2VyOl0nKQppZiAhIGdyZXAgLXEgIl4ke3Nlc3Npb259JCIgIiRhdmFpbGFibGUiOyB0aGVuCgll
dmFsX2dldHRleHQgIlRoZSBzZXNzaW9uIFwkc2Vzc2lvbiBpcyBub3QgYXZhaWxhYmxlIgoJZWNo
bwoJdXNhZ2UKCWV4aXQKZmkKIyBUaGlzIGlzIGZvciBsaWdodGRtOiBzZXQgdGhlIGRlZmF1bHQg
c2Vzc2lvbiBmb3IgdGhlIHVzZXIuCiMgV2UgbmVlZCB0aGF0IHRoZSBzY3JpcHQgdXNlcl9zZXNz
aW9uIGF1dGhvcmVkIGJ5IEFsZXhhbmRyb3MgRnJhbnR6aXMKIyBiZSBpbnN0YWxsZWQuIEl0IGlz
IHNoaXBwZWQgaW4gdGhlIGxpZ2h0ZG0gcGFja2FnZSBpbiBTbGludC4KdXNlcm5hbWU9JChpZCAt
dW4pCmlmIFsgLXggL3Vzci9iaW4vdXNlcl94c2Vzc2lvbi5weSBdOyB0aGVuCgl1c2VyX3hzZXNz
aW9uLnB5IC0tdXNlci1uYW1lICIkdXNlcm5hbWUiIHNldCAiJHNlc3Npb24iCmZpCiMgVGhpcyBp
cyBmb3Igc3RhcnR4CmNwIC9ldGMvWDExL3hpbml0L3hpbml0cmMuIiRzZXNzaW9uIiAiJEhPTUUv
Lnhpbml0cmMiCiMgV2UgbmVlZCB0byBydW4gc2V0eGtibWFwIGp1c3QgYWZ0ZXIgaGF2aW5nIHN0
YXJ0ZWQgWCwgc28gdGhhdCAkRElTUExBWQojIGJlIHNldC4gQnV0IGluIHNvbWUgY2FzZXMgdGhh
dCBpcyBlYXNpZXIgdG8gZG8gbGl2ZSB0aGFuIHdoZW4gYnVpbGRpbmcKIyB0aGUgd2luZG93IG1h
bmFnZXIgb3IgZGVza3RvcC4gCihjZCAiJEhPTUUiIHx8IGV4aXQgMQpzZWQgIi9ERVNLVE9QX1NF
U1NJT04vaSBcCi91c3IvYmluL3NldHhrYm1hcCIgLnhpbml0cmMgPiBib2YKbXYgYm9mIC54aW5p
dHJjCikKZXZhbF9nZXR0ZXh0ICAiWW91ciBkZWZhdWx0IHNlc3Npb24gaGFzIGJlZW4gc2V0IHRv
IgplY2hvICIgJHtzZXNzaW9ufS4iCg==
--------------fqp79Gyx9p7rWEDrus9XodHG--

