Return-Path: <blinux-list+bncBCMKFVG4RQEBB2UB63BAMGQE57TPZ4I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 048B0AEA450
	for <lists+blinux-list@lfdr.de>; Thu, 26 Jun 2025 19:18:38 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fb0e344e3esf15668766d6.1
        for <lists+blinux-list@lfdr.de>; Thu, 26 Jun 2025 10:18:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750958316; cv=pass;
        d=google.com; s=arc-20240605;
        b=M6qlXdeZf0znj5ooO720Wz5Y1nUCBxL5Scp69MhpBARh0cE9jNF5mh6c3YTEgLygUS
         +//dU1blvNO0wS6xxisvH3Gmreajo1GEoiAtkFCeAN8eZs7z9r9vLQEClZb2HbJaCqtI
         WlTk+lGZaD+HcO6LmBGkglJyT2sC8r6OQE1FMtj+w/MZ3lNXWzKaRO6v7QJWTQDTlXCm
         s+BwscQvi92N9VQYqWB1PS8dejAZqdwA2AY5o1Nt+71ETxWaMZXVg1KPR9U2XufHsHMa
         iEFbGfNMJhvunyKWueirF2cLNG4d+wtaejkOUJa4meBKiv/v+cotpRbEcdYLrpQvjUdd
         77bA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=ohknGoeyrzOY1FvlMSKrk7rNBX5W7M3tr/y11RiQjzg=;
        fh=dwlbnVbK0zmEdY/VsnXUEB2t6HcilIzPUkcN/BoCD80=;
        b=K3gZMzdpdNxIvIZoQutfYR7+Ki7t8mtgFE+TTOJUBtQI7bln5VST9b7Ng0rhMC96gX
         XE+N0q2GW+YAPJaGvH8R3lKWg4QQnuvnGdmlbYWqrBxyM0f+tqSQQmrNnJ3AcK49qC2R
         L520DJZ8HkZ3gf7xG8kEEngsfdsioztWThPQBD4tx4PP0iQOV+Sly1t/0ndxyAnxvY4U
         1vjtL9qqCiVpQMJ8Z+GQeR7qs+aXl9p/A+DxBDNrEDZq8XY15BfSfhtX+O8JCuq364x6
         EOpphbiNaDCHD4reP7hexCEPfE0D2YtZRmTBq9t3uVAv8H03vq5IEMOkWNnNLpsoN+c5
         HixQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=permerror (no key for signature) header.i=@slint.fr header.s=default header.b="ShHl5lJ/";
       arc=pass (i=1 spf=pass spfdomain=slint.fr dmarc=pass fromdomain=slint.fr);
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750958316; x=1751563116;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ohknGoeyrzOY1FvlMSKrk7rNBX5W7M3tr/y11RiQjzg=;
        b=EJt0Q4DEE02alrz/IHerNTbe3IK7sZhgA7PCSLr8zi8ETMUTMJ5xUXn6+7a6a5hVVg
         kMJZU8yFwcqrpinX+H7IuHplpl+qe8G3RyWnupx9GozKRwa/Bc2Laga5tLihXOmj1xVD
         7KoJyUF8jUHTUSLj+IlWXOlcdE8qjAUkTdpuQu/g+a2C6f7Ja5q3CchvPKwm4FRwwBFV
         5imdXEwxNqQE49sdiF6/0nckLdK3kOhRuAVse3k+T4EYSAg4C8+dBaggmBjcUpT5x4Cq
         n4i0Av1Rvba15pTiPskMdDY4Ac6ORVCRVSNUelWIN3IVJFBz9ejj3HxQK9qjOlEmERIH
         QvHA==
X-Forwarded-Encrypted: i=3; AJvYcCUtUAZnOBJSIgMH5oAvr7O0kfRDgrsWG3ihkeq7ad1MXNP2szJpjoz9T63xZDRbeW7lqcI4tg==@lfdr.de
X-Gm-Message-State: AOJu0YxmxNkd39sHxh6lByFWADEHlGNZBtxJjcj9X1ENLgz15C5awc8F
	Fnrk1t0/2/VXZcKA1TAv3hWVUXgnJFDpgJMMjbUA9Ssc/jVG+QKsXP+3pZMrHDpIX1Q=
X-Google-Smtp-Source: AGHT+IGCI/80vxP2o5FxjEFiDgpuY7RD+5pFZgwNnnfo1IjuqWpv8yXumMJahPwLS89sOWx+U+c1kg==
X-Received: by 2002:ad4:5c89:0:b0:6ff:16da:99b4 with SMTP id 6a1803df08f44-6fffdcff50cmr5628936d6.13.1750958315457;
        Thu, 26 Jun 2025 10:18:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfT6511c0e3qhoK9EzCn9fCB6zTB1eOZ0wMM39twuJlsA==
Received: by 2002:ad4:596c:0:b0:6fb:4df4:35dc with SMTP id 6a1803df08f44-6fd751469f0ls18829676d6.1.-pod-prod-08-us;
 Thu, 26 Jun 2025 10:18:34 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUVnQJr31ztotpxnh5uuGL/kuwZZb84DbGhG9HGjNEAE0GdkweDJCQQYO/mqkArQL8fJ39oosw8BU0Pgw==@gapps.redhat.com
X-Received: by 2002:a05:6122:7d0:b0:526:720:704 with SMTP id 71dfb90a1353d-532ef676132mr7229433e0c.7.1750958314137;
        Thu, 26 Jun 2025 10:18:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750958314; cv=pass;
        d=google.com; s=arc-20240605;
        b=hreWyUc5eF94xMqzADpMlLf5C6VcSNffb7Zhu9pYyVzeV5S2U+s6A4OeBnHLzZXv72
         YAcYdU8i5dS7NFwPqo5xzFbx53cxMH1Vn6qlr2pTbdfi9Z8qeCYlA0VSkdtmE8F0Zkqr
         WeIRSnXJnuCYXa2CJ3S9yN78g3SghjC8ww1PxJ8FzmWfKJeJOx+re1LdnbhO+eEZcKOz
         TSmu0Y7Jek1fGXqj0O4in4GOtnMWJmsiH21v4IhsF1JVNPD2jMhrDsHyqZVwv6nf/3C4
         6lpPNdHLRQYY1Kp3vu9eHComfBuEE0B9HVbw8fTam2vqHAMtNHEwT2sj9QXdAFtuDxZk
         xynA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=JtTEEkxOM2CymtkwY/JzMWYHQ6vObKrG48we5O9t3OU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=a1uxJeSDSN3fg6MxUE5QR3HNRT+X3uRPvcV9cBCe4LYDbjSPV9dAI7MONDJzJEgXF7
         s+m+C9SMWIxH5Lu2HlOv+GrrX7VlvzdSbD8YJS5Zc5QpR8pup9VfCHtS95UIeMAwbSsa
         Yb5zKbq30wHIMqYHKT7ucTxK2eWm0eNtx6JoflfdN2KYQCIyoMXbinRgnY5rXYNkcVsZ
         NUDA9HYj00NYnyjE9oN8QuTTmHbKrTvShbaKsOIu19Ejbtc60nS53BNmdEvzNuYH/Txu
         BzOZjDNkWr35Sk9+pIRXu4cOv8aJIz21r3xqNRqpCHD/JitQS0jSPgSwyg8CcfwT1DdH
         Uv+A==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=permerror (no key for signature) header.i=@slint.fr header.s=default header.b="ShHl5lJ/";
       arc=pass (i=1 spf=pass spfdomain=slint.fr dmarc=pass fromdomain=slint.fr);
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 71dfb90a1353d-5330933b89esi250485e0c.265.2025.06.26.10.18.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 10:18:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-94-yjlF8kTFOF2paJQi9J_IsA-1; Thu,
 26 Jun 2025 13:18:32 -0400
X-MC-Unique: yjlF8kTFOF2paJQi9J_IsA-1
X-Mimecast-MFC-AGG-ID: yjlF8kTFOF2paJQi9J_IsA_1750958311
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 86A6018011EF
	for <blinux-list@gapps.redhat.com>; Thu, 26 Jun 2025 17:18:31 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 80A9D19560B3; Thu, 26 Jun 2025 17:18:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7DEBF19560AF
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 17:18:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E96BA1956048
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 17:18:30 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750958310;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature:autocrypt:autocrypt;
	bh=JtTEEkxOM2CymtkwY/JzMWYHQ6vObKrG48we5O9t3OU=;
	b=GL0O99ZLo2ryT2Cc5sCge8H0fhNCRIvA/2fwlLXSRB+0xTr5S0mcVbCej7EDuRj4ITg1Un
	5f3/UrH1M/12vShi3jMa63PJAhZVqUOLZvdhulq1ffggnUsHJty78nG/LPLChQXwCi3cbX
	5qkfqz+NdWVCmMQIN5suXinFUF8NGlBQcNyXeudeC24VgmNZ1pjWPwyg8nQU81XHaPBpO3
	PHwKizPvmYXSJRxhN96W46kSm4jLydinTrLerYlDfcB+pawPsoG4I5t4Msgt/qHMR6nOLX
	yC480GdmT/FlFmftrOlq7GXiXjFG44CKDAHdLmIvJyBKwsWlw4a/SDOirpspyg==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750958310; a=rsa-sha256;
	cv=none;
	b=Bklpl04Kb5Iy31f5LS8SUsAT/omqiFFSgxd15DHNegBno5Rogz22V7WurdxlUPUm1lT5VE
	dujErEGTaefHLI/FSYxnRbaeSN1uQFkID+12vOBpjazh7LIvUCaTVkj3I3mCaLAJVe5SYU
	SIwKTvpBxZ2jm8LcAlUmtFfIe7OKXH/21J0f1csBiA8jlfTRYu04ChlGdgE2LhwC+vl7iR
	I0vWNI+ATp5tVnj0GJfq7HOY6q+ZLyMDt8RTYhz+ztjHv4GnRdi+VR+JJnBrEht6E650+g
	vS61oq9BE/CpqJxMhSq6mftJ5SOP+MDvqVi8QrB5966Dy0xU6NMtPy4/uBwwWA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=none ("invalid DKIM record") header.d=slint.fr header.s=default header.b="ShHl5lJ/";
	dmarc=pass (policy=quarantine) header.from=slint.fr;
	spf=pass (relay.mimecast.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-452-DWHqCJ_uPbm5aopmmjDq3A-1; Thu,
 26 Jun 2025 13:18:28 -0400
X-MC-Unique: DWHqCJ_uPbm5aopmmjDq3A-1
X-Mimecast-MFC-AGG-ID: DWHqCJ_uPbm5aopmmjDq3A_1750958308
Received: from [192.168.1.60] (unknown [176.173.208.123])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 78B671602E8
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 17:17:36 +0200 (CEST)
Message-ID: <366e0c17-48d9-46dc-b550-54b8c1da3a3a@slint.fr>
Date: Thu, 26 Jun 2025 19:18:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Braille Blaster and linux
To: blinux-list@redhat.com
References: <8775841C-4F73-4EE1-B8B6-2F5DFE0E9ED0@gmail.com>
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
In-Reply-To: <8775841C-4F73-4EE1-B8B6-2F5DFE0E9ED0@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: E-NB_mxgK8zMvvclZDDhHEAhQy8H14nomB7Nb2J8jz0_1750958308
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       dkim=permerror (no key
 for signature) header.i=@slint.fr header.s=default header.b="ShHl5lJ/";
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

Looks like already built package.

Anyway to find out we need a link to this file.

Cheers,
Didier

PS this list is superseded by blinux@freelists.org

On 26/06/2025 18:11, Daniel Crone wrote:
> I downloaded a file from brailleblaster.org ending with .tar.gz and then went to where it was.
> I used
> tar -xf file-name.tar.gz
> then checked for a script file to run
> ./configure
> but found no script.
> The were the directories
> /bin
> /lib
> /share
> Without a script, I would not be able to run the 
> make
> command.
> How may I get where
> sudo make install
> may be run?
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

