Return-Path: <blinux-list+bncBCMKFVG4RQEBBDFK7PBAMGQEAYZBQBA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D5EAEBE70
	for <lists+blinux-list@lfdr.de>; Fri, 27 Jun 2025 19:29:50 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb0e344e3esf717656d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 27 Jun 2025 10:29:50 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751045389; cv=pass;
        d=google.com; s=arc-20240605;
        b=CHYVE1+eZBr0xyFXWQRdnjiTJzi1B/kQ9tY5qRw1GyNawxNJuF26Vt+cl/g74wLY+u
         HxO8HFzb2Eb5FCPcrIFGBHnlSYXOjkbyMkA5JS1ND4G90CXLdn4tLaaMdOkT0xzsezbc
         cAR+/hLl+tnGCqM00QzJFtnDWBnthjGxKWq+q81IRNMH9ByblpjRIGyP9PgrJmZyELUh
         wPBBjt/QG7v56qBy+S69h752SzeJrEUYedCIKbPs7bqhU0PX4srQpjiIxidHTMEwCAvB
         d6MF+cZWyQPAEWYj1TT3LY0c1gwDVlCfrcOVZ9k/NoVeIW+IDW/wRbcE1ztjnvaCwOWQ
         GnLw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=YYcwXrFDp+WpjxpY/nUu9vwZfoiPagHpHb2QYyNU0Ek=;
        fh=8nrT26eVlYVSnc5QWg8MWQmrh7lrLYoAVDz40sRQGjg=;
        b=hVbf/TQYPKecrWw+1eKR6OZk11kKDq+acznczxU7V2lQNevcvXFxsVlSU9JS0ozidZ
         q50edApF6U7b7LJiLAX9TzyCJ0atro7iAMNocZQLKO5mFlGrH7slvaQl/xyF/RgZEQ4p
         JfYNbH1XWuU00YSuraWoUmZhTbWOljaA6AzgNIU8OwKbOGJtDhUuXfre29ggwfW2Nr33
         RbXL5Iips5+5nRl1eXHEjUNlD4Wn0sIpIbIVC9InsPELoFAvbVkvpWI/WxSGasgzvFj9
         SSSyjrtqCNOVspBOV94tbNiQuXOS0+P2ID3ftSn01XP7Zj4amNtfV6pWohSWBaiZ1W91
         aJJw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=permerror (no key for signature) header.i=@slint.fr header.s=default header.b=HHFO2ZVq;
       arc=pass (i=1 spf=pass spfdomain=slint.fr dmarc=pass fromdomain=slint.fr);
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751045389; x=1751650189;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YYcwXrFDp+WpjxpY/nUu9vwZfoiPagHpHb2QYyNU0Ek=;
        b=AfSZCjqsKYi85nK0m1I2UVH4HPwm/IAragYazz+/ut2jcupGw8VWu9BxKVi5RWQ05W
         M+1j1OB5y3ScShuZLQ2QnzX725c44eSRiDIs7vtqx5KxzF8/+2eLCUCSeIfT4T7XIPxt
         cs37NEX+/WdHMuXg8X1qRSeq8Ezpa9QFaLQjo3krqw96lA6C3c3xQRbsvbDnhWYuG7sk
         1fibqIFHtNvR2StUI0s+PDzIaB1EGqAZbqUdU6zCm79txsbOK6RqAJViWWp4ljjAwe4q
         xfz17S8X3vNxPpLNbKkcabWkDjdxPC3D4q4A/+lIzdfvVp0GP6osgyWaT8Fg3aDXPVWY
         O3dw==
X-Forwarded-Encrypted: i=3; AJvYcCUXcPpNZZm2MKua3CxlPSgTOgPT7Epmapsj3NFxpgYPHILR6O9MuUZ0Dsvqt96S9QLAiLC1eA==@lfdr.de
X-Gm-Message-State: AOJu0Ywu5W624qjxXQlWEOUYOGrcHmV9WMWYFOkNTwYxWwcRl8UJrnxU
	/FQVJxX9l8dEIic01xml6G/PErHSyBaIargbbuxmfIaAFIqW5W/LMlBQN39aS5k547E=
X-Google-Smtp-Source: AGHT+IGXVwl6gqjHVru1fXc0uqkS4yFD3/JHyQfuzUKt+4Z3Hv9JjQI1Firqm8L8Anz6NfgyDRvXDw==
X-Received: by 2002:ad4:4ee5:0:b0:6fa:c66b:8928 with SMTP id 6a1803df08f44-6ffed7a4f32mr72861256d6.2.1751045389049;
        Fri, 27 Jun 2025 10:29:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZeO/8HBSN9w4UIU8cafQ+AVgC8QzDHvSbkr73KTEG+fLg==
Received: by 2002:a05:6214:3001:b0:6f8:afe1:86df with SMTP id
 6a1803df08f44-6fd7507498cls32212396d6.0.-pod-prod-08-us; Fri, 27 Jun 2025
 10:29:48 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVEAAZh+6MRKs98iKweH/32c9dQwqyLX/O3twYBVy5nApwaxnu+hkUXdnELvyTOatgBS5/cLXcMBTy6zA==@gapps.redhat.com
X-Received: by 2002:a05:6214:c45:b0:6fa:ccb6:601f with SMTP id 6a1803df08f44-70001c5f0edmr53023606d6.21.1751045387901;
        Fri, 27 Jun 2025 10:29:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751045387; cv=pass;
        d=google.com; s=arc-20240605;
        b=KIJVkGZe6qc8/wqNi40eyZ1uOXJc8yrsw5FY7M4LZcwmey5dxDRpwnsoxTi6/NKurz
         bN69BT47naZPESHyS6Y9NHVsd/am2JZMLR6MuCJiEcWl04TSxDv7cF+utCyR4FOLC0FY
         B9yCQlfcqJxZ4Ea82imAg5YF6YqGi5f7fsU0ggC22FmbyCz1KtoyACSn+dhYv4D9aeFO
         9nu4r6cxcUagB3/z6m/sw8TNhelK/k5oEsjeMWRZnIK7x61EVeYhmckcnA9NwPT8ZJc3
         OLPC0RzzbHcskGyoS6EM2XU2dptzbx9BI8yfV30djVVGfr7DsVHNDd7LmU44CvLZkzMb
         AoRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=d16HYlxk9yQDXxRylLIz1Vk1xMaIgynR0Cmk+Q+ihEs=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=O239JUHzIQ0nJPHtNW2dsr7SWDFcZIKcJMVUQKnQUvrmEsQwKq3hfid2YugLXGX5Hx
         fOTq1EFvDT7bNdYF6/Hko2tiK2izE51zpm6sXAbMgnGOlO1Vuj6KRBvkgSxLeo4iq4Mv
         FDyEinpGqWgpqDoFkx69j+EsliX6Oy6YmbfP+Bdjft22aqtEJiPOrzt7wvXZ223g0ktq
         DSJH8ICbcMyM1o24CUEb20IAdvCW0TEfTxYq9bTvIYTQqOtSXLciK+C5BSX5O1767T7J
         wYkTvJzizq/CiEMEwXLkpScD08qKd2rivP0uot3OfdEqMtdMVrTaLWwwWZPYg0Fb8edd
         Qupg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=permerror (no key for signature) header.i=@slint.fr header.s=default header.b=HHFO2ZVq;
       arc=pass (i=1 spf=pass spfdomain=slint.fr dmarc=pass fromdomain=slint.fr);
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7d443228dabsi251128485a.199.2025.06.27.10.29.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 10:29:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-387-vd3KnL6LNAeFnYyir8grRQ-1; Fri,
 27 Jun 2025 13:29:45 -0400
X-MC-Unique: vd3KnL6LNAeFnYyir8grRQ-1
X-Mimecast-MFC-AGG-ID: vd3KnL6LNAeFnYyir8grRQ_1751045384
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 62E431956061
	for <blinux-list@gapps.redhat.com>; Fri, 27 Jun 2025 17:29:44 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5DA4219373D8; Fri, 27 Jun 2025 17:29:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 16B911956095
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 17:29:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D9F9218DA5CF
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 17:29:42 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751045382;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature:autocrypt:autocrypt;
	bh=d16HYlxk9yQDXxRylLIz1Vk1xMaIgynR0Cmk+Q+ihEs=;
	b=D2Cb/mDG0YFUU5RTVnYjDKgCAoUtJx7ZpxG/C5WbitQ9wnghLofx2JDmU7a9JfRpHwcWqg
	4BWLyRimsFtHQh0ykdQVAXHyFnDsAhunH77dcl6HWEhzpGiEdoSuK82fOP473IrbW7niCv
	Z2o2Ar/xZ9h+in/seLlb7onT4RgjV0typf7G202+fZYdyU9ZqT9epgOD4vDmDCiEZdeHla
	pwHyj1/8XqSrSv9dvhCErqIy/QTeifXlNH2zKU+rlFN+Wa5Zgr/IIwjXq+PE+yzo/pYitq
	YURRToMImcx1r/f07uXhDhKZtlMysJXKBGDcbaxLY/SURzwsG0N2uR0qjwjzpw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751045382; a=rsa-sha256;
	cv=none;
	b=TErsj17i45S7vFq030cEeNVllxhKUMrv0cVvzo7lEzSN7FlKj3BtNet/8JaTVtKs4/FXtz
	D7tsvY8bJ98AHFop7XjmMJW8d2dc2tNXQsHmhQdDy98KGTH/fgWBdMWGKD+Gb5kz9kzEZI
	j9GOnYiP9awBSVNjqqcCVUzpdpa/Ipfpjuxl12Js+YZyjkfOjpijzjhMISc4F754NBxoao
	WDK0pPqpVB77euJh5CkQ7Xewh3SHY2oZrMVv6o0vH/Q58HGYfdYroN5MGaI9MTgz+7N1fv
	mjn81nXtAdmYVomuuZQaTl2cgYZqagmbeT8NC1KMhFBE4Fy8BjnIdkuU4j/5jQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=none ("invalid DKIM record") header.d=slint.fr header.s=default header.b=HHFO2ZVq;
	dmarc=pass (policy=quarantine) header.from=slint.fr;
	spf=pass (relay.mimecast.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-18-aAfRbpb6Ouatn684FTMBUA-1; Fri,
 27 Jun 2025 13:29:40 -0400
X-MC-Unique: aAfRbpb6Ouatn684FTMBUA-1
X-Mimecast-MFC-AGG-ID: aAfRbpb6Ouatn684FTMBUA_1751045379
Received: from [192.168.1.60] (unknown [176.173.208.123])
	by darkstar.slint.fr (Postfix) with ESMTPSA id F3AED161438
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 17:28:45 +0200 (CEST)
Message-ID: <fb929687-7590-4e91-a5e2-ab997c2eb25f@slint.fr>
Date: Fri, 27 Jun 2025 19:29:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Braille Blaster and linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8775841C-4F73-4EE1-B8B6-2F5DFE0E9ED0@gmail.com>
 <366e0c17-48d9-46dc-b550-54b8c1da3a3a@slint.fr>
 <A5B44213-E216-477A-82E3-8E6934C590C9@gmail.com>
 <e438d884-82b9-427e-9207-1aff37fe2c7e@slint.fr>
 <C1DD2AFA-6AFD-4389-BB30-F166BEF6BFC8@gmail.com>
 <cb4e0932-509e-4f5c-8315-204b2e5a19d0@slint.fr>
 <6747116A-6B03-489A-B4CF-539BE8C00998@gmail.com>
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
In-Reply-To: <6747116A-6B03-489A-B4CF-539BE8C00998@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Obpfj-Lpz8VtM7CGk4BQENQ_Toh3GzwgpNYV9dLprfM_1751045379
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       dkim=permerror (no key
 for signature) header.i=@slint.fr header.s=default header.b=HHFO2ZVq;
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

Hi Daniel,

please post further messages on the mailing list you used initially so all can
answer you, instead of to me privately.

You need not only liblouis (intended for developers of software relying on it
and translation table writers) but also liblouisutdml that includes the generic
translator file2brl and liblouisxml that includes the more specialized
translators msword2brl, pdf2brl, rtf2brl and xml2brl. Each translator have an
associated man package and a --help option, thanks to the late John J. Boyer.

Be aware that the domain of John's website abilitiessoft.com is for sale, so you
won't fine anything there.

Neither liblouisxml nor liblouisutdtml are packages from Arch.

They seem to be packaged only for Debian and derivatives. They are packaged for
and included in Slint that I maintain.

Cheers,
Didier

On 27/06/2025 17:32, Daniel Crone wrote:
> Once lib Louis is installed, how does one translate text?
> 
>> On Jun 26, 2025, at 14:56, 'Didier Spaier' via blinux-list@redhat.com <blinux-list@redhat.com> wrote:
>>
>> There is PKGBUILD for braille-blaster in the AUR, but not for the current version:
>> https://aur.archlinux.org/packages/brailleblaster-bin
>> https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=brailleblaster-bin
>>
>> Maybe you could request the maintainer to update it.
>>
>> Cheers,
>> Didier
>>
>> On 26/06/2025 21:37, Daniel Crone wrote:
>>> I am running arch.
>>>
>>>> On Jun 26, 2025, at 14:29, Didier Spaier <didier@slint.fr> wrote:
>>>>
>>>> The link leads to 4 tarballs:
>>>> aph-brailleblaster_3.0.1_amd64.deb
>>>> aph-brailleblaster_3.0.1_arm64.deb
>>>> brailleblaster-3.0.1-linux-amd64.tar.gz
>>>> brailleblaster-3.0.1-linux-aarch64.tar.gz
>>>>
>>>> Those whose name ends in .deb are Debian binary packages for architectures amd64
>>>> and arm64.
>>>>
>>>> Those whose name ends in .tar.gz seem similar, without the metadata needed to
>>>> install them on Debian using the apt application.
>>>>
>>>> In all cases these are not source tarballs, so nothing to configure and make and
>>>> I could not find the sources in the website.
>>>>
>>>> I which distribution do you want to install brailleblaster?
>>>>
>>>> For your information liblouis, liblouisudtml and liblouisxml are included in Slint.
>>>>
>>>> Cheers,
>>>> Didier
>>>>
>>>>
>>>> On 26/06/2025 20:51, Daniel Crone wrote:
>>>>> I was on the following link.
>>>>> https://assets.brailleblaster.org/brailleblaster/downloads/download.html
>>>>> <https://assets.brailleblaster.org/brailleblaster/downloads/download.html>
>>>>>
>>>>>> On Jun 26, 2025, at 12:18, 'Didier Spaier' via blinux-list@redhat.com <blinux-
>>>>>> list@redhat.com> wrote:
>>>>>>
>>>>>> Looks like already built package.
>>>>>>
>>>>>> Anyway to find out we need a link to this file.
>>>>>>
>>>>>> Cheers,
>>>>>> Didier
>>>>>>
>>>>>> PS this list is superseded by blinux@freelists.org
>>>>>>
>>>>>> On 26/06/2025 18:11, Daniel Crone wrote:
>>>>>>> I downloaded a file from brailleblaster.org ending with .tar.gz and then went
>>>>>>> to where it was.
>>>>>>> I used
>>>>>>> tar -xf file-name.tar.gz
>>>>>>> then checked for a script file to run
>>>>>>> ./configure
>>>>>>> but found no script.
>>>>>>> The were the directories
>>>>>>> /bin
>>>>>>> /lib
>>>>>>> /share
>>>>>>> Without a script, I would not be able to run the
>>>>>>> make
>>>>>>> command.
>>>>>>> How may I get where
>>>>>>> sudo make install
>>>>>>> may be run?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

