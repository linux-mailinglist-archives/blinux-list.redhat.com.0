Return-Path: <blinux-list+bncBDEPFPWCWMDRBMFX5WUQMGQE2MYWYJQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA027D8EDD
	for <lists+blinux-list@lfdr.de>; Fri, 27 Oct 2023 08:41:54 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41cca916954sf22974911cf.2
        for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 23:41:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698388913; cv=pass;
        d=google.com; s=arc-20160816;
        b=un+xOlISzSjZCKWVJwOrQlrdqyzWdMi2HeB3tRQSr35INVaeROvA0aa9Ij6word260
         H4gfG183MXhwsonkZAE7KllU4XltE/PhGl66xoS92pAnQGpS4Rw2QUz8CJ5kKkd5lOBR
         sbe4nySEEKOHNvC3qBrxvgjwXv+JOrG0lxlPGXlUMzZ+dT4MIKIKK9F5xlSCownwxLhr
         3tewa7lZEmIAv9adIP1SnpgSYydhxx+eL7d7bmYUsJY0ZhusAkQkCPqWjfLd//hePx/G
         mjOPAIwD5H4388OlPOdHzRwO5YjHvtC2sRgLBu04BNJElYbfaUfbusfliextvbWecCJr
         xksA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :subject:from:to:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=LOt5v/nU5t33LAsTb6ddNGe3IdB2jNEWDXMegJuI+7Y=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=J1y2yNe7bLQik3Wp96pjzhGIS4DD7CywKhA3wFZCYpJp99nfmVnb8h203Mus0WrBS1
         8XnAY4yqLcb4ATT75S4qIsT2T7j0eGy+uwBos5LFjm7KeUwc5AvJ2EBxaloPoe7MHtVs
         Z6vUYV3gJ/OjU+TmuLYSYrAXfug7PO6VU97E3fPXWvgHAEbwHX0Y2vq1zakDb/XiEtRs
         QP7Z6MRgYToqPtzlcv7wJ0tJ66+ijbAL0QiqwLjB2nvtn1CW1+jkiJqFyANIPlcVolLA
         zyj34fwuwz4hxh5qyMTDopIVyUu50/3ch/6Gts6wS0N6hEsK/vFZumtCVCf+52gjlBan
         MpCw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698388913; x=1698993713;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LOt5v/nU5t33LAsTb6ddNGe3IdB2jNEWDXMegJuI+7Y=;
        b=TSrz7nuO6UY8Qq8IS5bj/kL4GI1XDupLnVegBnSsu3eXp7lDx1c76rSPjlALY/xuNz
         508h5X/ouQUcUdnD9qZDve1C7nphNcpGSCda4sn1pS9Rf9dbz57uOg/Ylsr83/Bwb6HG
         mM5NqrQoA3qqf6iJO3IxgfsbH8DqP/ChtCi+zrlLUwSSO61RAZmWRcPO6tImIwyjA3+u
         qxWpQbHaDKNRBEC/lJ/p4Wi/4B1hE9tkfCMet3WM/MfAXMPnH+gaV8fkHAslzwZ+w1bJ
         8v3Rc4vsdIbXlK8yCF2jia2iWV7Bs+97+WiZIEo9mI0DgZTX5NThzfD95QgB5MBj+dcj
         HE6A==
X-Gm-Message-State: AOJu0Yw4RAzDnVaM7kV5bHVE2yNTLR+y1UWjtvpaV4w/pDfwQApH/9gG
	M9CIwyUBDDJ5KLPkrvS2lNpfig==
X-Google-Smtp-Source: AGHT+IHfPAmYjjewxpi73hk2Q2cs/0ugsC8qxSPSEHRbj4IKXJdKqTn+Q+P1Fx/B92oQ3TBN74ekNQ==
X-Received: by 2002:ac8:570a:0:b0:418:152d:bf4 with SMTP id 10-20020ac8570a000000b00418152d0bf4mr1984328qtw.51.1698388913123;
        Thu, 26 Oct 2023 23:41:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:478c:0:b0:41c:d096:9c9d with SMTP id k12-20020ac8478c000000b0041cd0969c9dls253157qtq.1.-pod-prod-06-us;
 Thu, 26 Oct 2023 23:41:52 -0700 (PDT)
X-Received: by 2002:a05:622a:138f:b0:41c:dd28:d16f with SMTP id o15-20020a05622a138f00b0041cdd28d16fmr2209976qtk.55.1698388912284;
        Thu, 26 Oct 2023 23:41:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698388912; cv=none;
        d=google.com; s=arc-20160816;
        b=BGo8015S/8gAvIYdEQyBaOUlyKKseaD1Ax/Y1I4Nf6Ju1sKRqwwu0tPT8y6ZRRGLWh
         y8+Ge+T3AKbq+PvPWZ5hR+e8obvLNcaFvuknwOA4Bw+0t0jpGToAYlRZyRz1wDP1LaWQ
         qinseoC7XE3uHWG2MsQ22pDChOpJSjFFZFffdBH5Mo9X22ZEbkDuJutdl1ZmzQIWOT5B
         Yzjr4MwIa3y08ivO1vwqQ4i6+7HgT2A0MtiGVDhn9rplDexsoqlkuVlwvxCqirmJONBa
         qlDaEsnO6okxRiqJi5wJEJnjiHWNnNn2CiS2azhpwyvocd0Tm2dlIMj0zAklBvpHhFYN
         3tkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=CSvto+eKiGiXp8DqvetO1o1qXDrND7CJrJkYprTHu7g=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=kS4Eg9ERmrqXbDzWhvbt0r/7DN6j19tnhOEfCfBgR3/VZaTxp8s6AO8leDCzo0NQrC
         zzglMv4mqEog0ByfYOapBgwAnV4RvRMpN0zshiyYe6HfWcMHvvgtz3U+ef9teVlMmLt0
         PuNgozE3LCOEYnCUoDWUIObA7iX5VereU2VXb2p7BeIFNQSmOFsXLD4fnSWSMU2oLLYt
         YUBW7a3sr8nDGfSr1W7K0Zvx4DqcERHxDZ82SWmU48JDZgLDTG9GCDKxbbiY6nOK0jna
         ECZTgo3lDFJMr9B8eBPJXo6kyEgZwyPCUJqebBbd5CbUq3RtEXJar0gNa4pchWaowHLU
         o3uQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id j15-20020a05622a038f00b0040fd9f98527si439218qtx.754.2023.10.26.23.41.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 23:41:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) client-ip=77.75.78.210;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-77-_OkbVZQUPeinbuCVi6eb0Q-1; Fri, 27 Oct 2023 02:41:50 -0400
X-MC-Unique: _OkbVZQUPeinbuCVi6eb0Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D1B5185A783
	for <blinux-list@gapps.redhat.com>; Fri, 27 Oct 2023 06:41:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 39B921121319; Fri, 27 Oct 2023 06:41:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3196B1121320
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 06:41:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F68B101A53B
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 06:41:50 +0000 (UTC)
Received: from mxd.seznam.cz (mxd.seznam.cz [77.75.78.210]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-518-PNaZZs9_MGW55yyBkR1opQ-1; Fri, 27 Oct 2023 02:41:47 -0400
X-MC-Unique: PNaZZs9_MGW55yyBkR1opQ-1
Received: from email.seznam.cz
	by smtpc-mxd-6786d888bc-w26z9
	(smtpc-mxd-6786d888bc-w26z9 [2a02:598:64:8a00::1000:4ef])
	id 1551690700c93a5d14bb981b;
	Fri, 27 Oct 2023 08:41:45 +0200 (CEST)
Received: from [192.168.1.173]
	(host-213-235-142-85.ip.topnet.cz [213.235.142.85])
	by smtpd-relay-75b8985f9d-kxb8s (smtpd/2.0.15) with ESMTPA
	id 9fb1b441-b10b-4bd0-abd1-57e5ae5ed2db;
	Fri, 27 Oct 2023 08:40:30 +0200
Message-ID: <34eec98c-20bc-4f28-9646-b5ae01f8b86a@seznam.cz>
Date: Fri, 27 Oct 2023 08:40:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>
Subject: Esys braille display and Archlinux
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

have someone Eurobraille Esys braille display? I have problems with=20
working on it with Archlinux. Sometimes it connect and work, sometimes=20
it writes USB cable disconnected and I can't work with braille. Please=20
how to solve it?

Thanks a lot.

Best regards

Vojtech =C5=A0miro.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

