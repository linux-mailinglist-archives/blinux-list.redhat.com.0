Return-Path: <blinux-list+bncBCMKFVG4RQEBBQ777G2QMGQEG5MX76Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EC9953D50
	for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 00:23:01 +0200 (CEST)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-4f7082b8822sf407819e0c.0
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 15:23:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723760580; cv=pass;
        d=google.com; s=arc-20160816;
        b=XBEfU4Aq1kBwOxfZG7WRtAV6aQU4GEZKVpHCWEWdSrh3/B17l3jWIkRr1Ah4w/+Rcf
         fI2sDdWUABlzKPhXrhkmwei+f/ncCpn7V62QyfEfgFO50GdzIHZXzBCISoo5HySi/Z70
         qkyYwbV9VRKk/w6w8AqXczcmqqGdWp0vwIcy/Si1X7UrcwW12GAzTpPr6hTkbP5fnuCo
         GaKLf8vqsN+2PRtWoh0aAWMtls8rmQvmWpA8xUccx4/1xSQXZ+SEkr9vTSFkiP4iHAwZ
         Gsc6d9FDO5sX1sDvBvF0HNtmNSFbZDAFB1s3bXW0ZVdTlNJ/3e6lku5jUyL+x+nhwmf4
         lBxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=xRBFlhOe7V0q83Scf4aLU8dLozjD7hN6aq9q700GKxo=;
        fh=V7BZ/napI0VNXyVGtbclxy7hqfYEKfKRFsmmKZKW71Y=;
        b=BzkEo82Jcmx3bcK6SBAaqfvT8wgV1EeOwZOqcJhhtMmSjrouOhh0DkjGcOtdb97Yy4
         5mFbsass/V0I3jm2FeOFELwTluVL3s8GQHh1PoSOEcnLjS7KWaZB1Zvl1+qqsU4CShkW
         l0wsfXEdbXGmEl13icjVW999CsPm6W3UksEHiy+inlgrlIwv83FCevlXpTbIP5/K/zky
         AaPlg1VUsz00pD1gDVpo/iOGl75gKNBr9aRxJzbjvD81nBArQJnJih5sd+12LimJ/04h
         AJ7Sd92hp+XLyvO5skicxjrZrU42mnYeHfwkWRYTiGFodiBuA0G0tJAqx2eJD+eQLJ7C
         Wj0w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723760580; x=1724365380;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xRBFlhOe7V0q83Scf4aLU8dLozjD7hN6aq9q700GKxo=;
        b=Fmmhds0uOdZFEK+XnOdJ7wEEF+XI720/yczDlx4oJJa+Nw3x55jDVFnalY6ed02oWd
         W+4mMdkCVMfEsZdTjldgHXFgyEDuooBKcpIAp9VPoQym9P2cSKEwWpx8V3dFdqD2/yjV
         IvQKDflgvUvbp10/OjMHe2A276psQkKPNu9lSy5XWg0fI0LKtrLgJWLnvugLogngDsCL
         FiD7XHWtOv8oGo+9ysBcR3CTEzz5UYbVMpviU37b/GJocSb6RX4UbiSTom/TmJhBEV23
         5RI4aMrFfWxqHRLyqI6lt1GsB9wV4sV89sOtH6QdE3MtUeXCl79d6wweb45mF/Al0iOF
         TS+g==
X-Forwarded-Encrypted: i=2; AJvYcCWlsIqMXEVxWiu7Px6il7ax2nA3wOeuBPQVtB2gq2SEUCo2cYOhVIHxabK3qyk3Ujlrh8pfWeit57yEJcKtvq7h3PNi6vZrJwlZ
X-Gm-Message-State: AOJu0YzJYzTt9WONVoBP4TBDTA0MZIn4nPcg5lQ3Vcttv2B8tadRn9Se
	/heFuXID5pYwP8HoXspHNEqgWmBNwVKRhQ/wECjHyDZrxzU7A+Qg1gMISDdbeyI=
X-Google-Smtp-Source: AGHT+IGMDdImleLsICbXHh0U98X8II7T8hTi+QTxgklz72FclR9o0I6n35tPysrEYFFEA9eX3sdZlA==
X-Received: by 2002:a05:6122:2911:b0:4f6:b160:3806 with SMTP id 71dfb90a1353d-4fc6c9dac60mr1490641e0c.11.1723760579811;
        Thu, 15 Aug 2024 15:22:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7dc8:0:b0:444:f4c3:34ef with SMTP id d75a77b69052e-453672fb856ls18308721cf.0.-pod-prod-04-us;
 Thu, 15 Aug 2024 15:22:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUQXAiM5v6vASgo38T7GUuQ6Vxv4YsjYCixA316zfNEPC4rbDYTcsw/fXlvOe3lj8pVAyz3LOlAvBn7tkeY+sKU5SdHI2A1AMtXzVxF
X-Received: by 2002:a05:6102:3ec4:b0:493:d325:4d71 with SMTP id ada2fe7eead31-4977989f0c8mr1821672137.9.1723760579103;
        Thu, 15 Aug 2024 15:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723760579; cv=none;
        d=google.com; s=arc-20160816;
        b=HfoWUI9wPapnRo4eT2Td/0IPmQuI8zZHOiCd6d+uvdj+CCSR5y5REur8K7MCblPrmH
         oLghhHFfljS/hIsafLL+6GgjVkcW53jKb9VimUWVpqVsG2v76DHc126855EbIA4hhydj
         cum/TcWSWRXAbQUavKvFwQPU9GyOlp146xnK4kBBGEGH0ysf01RHLnqok+vQd1Fi80e8
         haVAuIPjRjjK/g9as8xcf0eVT7pErsM8uK5yudRhFORHBWhyAGWs1r1tHKCOXwFBZ+e7
         lDt/UzDb7PtxohwjForryEKZYtxX/9R5cnHzjSZ4OiLMfeJ85q1J4pRqN42wfntzqGkO
         0Wrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=MLXDDKbauVQfir/vAWmny7dv//3hqtmW6xfrBqCe0pg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=fW3ryW/d5ULneoyRlpWP0LR5EHQwenbFEUNqtMOo7QleGZQ3nThUu1eAY/Kem3iORL
         uNwTRcHK2Ng/k+DnQsK89gbd+/AsjoP+ipSIcVYiuavDndPhllLHFEkcfgrcQue3Pugn
         RELqd6k52PqcOEtcf8NneLmNF0Ige8zU0t7tb9pyKCudnlmOtNwVm1v9R+REJaznkkN4
         XC6zEHZdis/yJD8OuU64vWJMgCBTDunzvjdKhS9kwILKDjef2y3Qj6ifNanre76iUKaq
         Czzlk/hLBtWWflkpHBoYDFk8+IlML41tj8va3AZeL3gTWxSGoSQ5/FqPANWbhwXJxAGd
         YP5w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a4ff0e6396si301829685a.477.2024.08.15.15.22.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 15:22:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-612-t4pJBiynOguTeC17jYP2yQ-1; Thu,
 15 Aug 2024 18:22:57 -0400
X-MC-Unique: t4pJBiynOguTeC17jYP2yQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9CEA21956048
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 22:22:56 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 78581300070A; Thu, 15 Aug 2024 22:22:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 75EDB300019A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 22:22:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DBAD31955F42
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 22:22:55 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-354-3Fy5AFLAP6OYfFZPgYk9PA-1; Thu,
 15 Aug 2024 18:22:53 -0400
X-MC-Unique: 3Fy5AFLAP6OYfFZPgYk9PA-1
Received: from [192.168.116.192] (92-184-124-10.mobile.fr.orangecustomers.net [92.184.124.10])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C9C4665EE6
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 00:19:36 +0200 (CEST)
Message-ID: <0e72cfb8-784f-4db9-ada6-3bf730ae68c8@slint.fr>
Date: Fri, 16 Aug 2024 00:22:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: emmabuntus info
To: blinux-list@redhat.com
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
 <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
 <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
 <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
 <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
 <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com>
 <55ddac5c-5f1e-41d8-b0a0-04de9ba2eb5d@gmx.it>
 <80016b6e-f9ee-4649-bfc7-e3eaaf9094ff@slint.fr>
 <0ccde190-b38b-4de4-b6c3-eb68fd16e547@gmx.it>
From: Didier Spaier <didier@slint.fr>
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
In-Reply-To: <0ccde190-b38b-4de4-b6c3-eb68fd16e547@gmx.it>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
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

Thanks for the confirmation.

Le 15/08/2024 =C3=A0 23:51, 'Kyle' via blinux-list@redhat.com a =C3=A9crit=
=C2=A0:
> I did get the message twice, once to me and another time to the list. So
> it looks like it did go through, but for some reason you didn't see it.
> Thanks for the info.
>=20
> ~Kyle

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

