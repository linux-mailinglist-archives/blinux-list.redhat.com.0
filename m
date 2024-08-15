Return-Path: <blinux-list+bncBCMKFVG4RQEBBR4R7K2QMGQEVOTRVMI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 87600953DC8
	for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 01:01:29 +0200 (CEST)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3db18cfe102sf1129781b6e.0
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 16:01:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723762888; cv=pass;
        d=google.com; s=arc-20160816;
        b=ppZNvLBks0Wj+iWlPZK+q9glNW9Zom/AOUGc9k7Dw44tccoGMGx620LIJD4IxbXc6W
         ZriwlkUHfdBzG/RTgLmS+DoSs5xtbBJf08ovTYnH1N4qSSvIAiGqNxn4eTt2YrmWyRiG
         3LEwkSsZouWGl3FJIerYd9MvyVZAd/B7CMG7kWZLUn/f9VAqutDWrma2Z60O5iKIM58C
         qLHH9N1QrJPl0GCVd379IduND9JcWQgWAK/SLuGfMBGDtcgdnJuH/DsdcvxgmCZZmVTm
         YwXaBGsfG6CJFT0Sg2dhaqhWCMWBmif1Kv3UDCgoT65Ko6OW7ZHC82AovkGLI4i4jJHL
         +k4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=fys0FYi2xOWHVbPgJKmxMdD4WnosBtryfkX14//rwuk=;
        fh=VshY8SZdcLfLZrvu5n9VrMjQ+WG24SaxR1/Vx/TkdBw=;
        b=scrv4CUAL092hvPMweMlkxKfb90fFWe0IKOzJ02UqoCvxmDrr3Z+ogiMqIMJGrVYVa
         DICfnN+E+ZE/dWWb7AI/N3t9ZpTjkHLiS9nKPPimbzTLvn8iSJSATqIu4W1BGjCPxWlB
         1+m/wX+RPblSY/IHPsGkAtyJ+MDYgcqIJEptKBnBLyzr8G7MA/mjI4kXe5uSL50JssKh
         w7fSVZHbN1B616/nePfnqbeoz5jjoWspgp9hvblsFq3TSNRMRbrzB7K5XO4deHUVAa8Z
         5q3vzmezs1kfC27gBlw4yfWtQtHnYNWEUA3ea8SPksvp50tXtXpAGaXGXFJiXUrQQdTs
         DOXg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723762888; x=1724367688;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fys0FYi2xOWHVbPgJKmxMdD4WnosBtryfkX14//rwuk=;
        b=o3CUHmRBWrxcGrVdELyWCruU5O23GqUSpzYPgZBWRdVGSgINI67jsNvcaRf3k3L78B
         yiftinDITWZSM247QUzo5cccyDUEfQb781oEESiCdszCoNYKJOph7veLGAnBXMGUhYsb
         fL29KLAGR+ReP+3nU/dUpe4Vae21W0zMXrSuGL8KE/x+5Y+XtyI92f2QVMfsvrLKBkCQ
         xV3cxZMljn/zZOs9WxfTb/kLnKeEsMuqfJIqm+FFdcdabr6ZFfrHq1lKgpCBNJwN2yAv
         rzcyN/YNRxsmX62th8DqF+hW6jsoKT15CsWRkzISibdrs/6vJaacjKQk9QWfSpDAt90v
         bYQA==
X-Forwarded-Encrypted: i=2; AJvYcCVj41bO4ILRD9q6wXyuuMlwol2BEWcxv3iHVW+UNlhIRZkA4lNL9/ApRk3oJrdjVAylylhEwNCYSCQ5ml4kdOQNmfY7vPyzya6o
X-Gm-Message-State: AOJu0YwcUiQxV7MGKV0Dlq+3bbWnO3anyAZN3gyHBKXd+aizFbhPLYnc
	B4YrTdZi6q2azBNmHd1OzwK+60eorstk7s+9jLzTdQYX6zxs3PqNZUIoTPmmysw=
X-Google-Smtp-Source: AGHT+IHnWzuZtSokeGeicgiQizr5BRS0NymrAesoJM1niUwFD3KZtfVG6TmTSO85U3hz/6YRHOiKqA==
X-Received: by 2002:a05:6870:2104:b0:259:ae64:9234 with SMTP id 586e51a60fabf-2701c37df9dmr1250297fac.13.1723762887933;
        Thu, 15 Aug 2024 16:01:27 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:1f1a:b0:260:e861:c262 with SMTP id
 586e51a60fabf-26fff5a10b5ls1518265fac.2.-pod-prod-06-us; Thu, 15 Aug 2024
 16:01:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW1Oiyu/Abzv+o9JHQbqGEanUdA/ilp4snQgrKGQ3ophAT4Ai/7WMXqTvdhj0S9nzSiJDU5uh7EK/QsnD82xgaWv3WtW1r5uHPvyqXI
X-Received: by 2002:a05:6871:80c2:b0:261:2357:5a29 with SMTP id 586e51a60fabf-2701c57bb8emr1071910fac.46.1723762886948;
        Thu, 15 Aug 2024 16:01:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723762886; cv=none;
        d=google.com; s=arc-20160816;
        b=zRIBKK/E2wrPKpgtgksfrOE5Z6DzgYsWBWymD24+ryhx/2JUjzz7X+lzXMmFmq0n+x
         9/lhqHQHSWIPB312SaqUd2+Jp7PkN6hC3nn6hT1DzsHj114VQ/myj7+5AQBslu5YwU7H
         ZfD2n3YafXq0FX+UwP368Xlu4SblvT2KkPuYVHb9PPGSHuA+kHbSa7C5nYCDm7OdPBEu
         1hcf9FtYYhC4vtA486FgH9yyAJOu62Pr3glp47QcH9PxdEUfuChOvkoscNA//HbgF0y2
         YlYtebsDsfyoYXP3VDujYPfg8oD3c1a9KGSi9EaLb9dtvGHb9U4ZHSgmCGO4W+1hjrWQ
         xukQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=FyQAH1/+u/4PrQcv5jLSNu4IIrHaBhZw141rVUDY++4=;
        fh=h+avxhsP12CKrdN8dnqqKmbrfLptYfKr1D2HayTsjac=;
        b=ZuU+nWQa/yA6MANtSYSbEXPYD/4c8281EXYz5hsTqw2m35UWn39RtoNI42xaHHmnUT
         Pi/r/O7cNMRTFLcaUNe/XUIZbGYDfcJGDDyckD/riCAfV+DVKHIqOJyDFGvyB6xSrCA2
         LRJtVcC9cIrjxJ36Sh+yC9AvjV9LEnVHw3OKGWZuPRWQzOSUw5suUXFAcjI5tO+Z6DDS
         hoWTKif/hHcdpYOUOYhjiEZk8Voax6zU2+t86P2/xS4OtZ8YgNSCYnvhDIWmE3UWDshR
         TzoKGJfjnc7fqvsk/wmCWvmGbV+MH/BnwXlsjrK6WFRgFavbE8wHtKdVnLVNXWs4Dug0
         g+UA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a4feffd2absi279168785a.102.2024.08.15.16.01.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 16:01:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-620-uHo9sE3DOkKZ7GGhBNQVUA-1; Thu,
 15 Aug 2024 19:01:25 -0400
X-MC-Unique: uHo9sE3DOkKZ7GGhBNQVUA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AF4841955D4A
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 23:01:24 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AA652300070A; Thu, 15 Aug 2024 23:01:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A7D50300019A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 23:01:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3FD1019560A6
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 23:01:24 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-50-KKC2F2xoPFmGxNlRC5wnHw-1; Thu,
 15 Aug 2024 19:01:21 -0400
X-MC-Unique: KKC2F2xoPFmGxNlRC5wnHw-1
Received: from [192.168.116.192] (92-184-124-10.mobile.fr.orangecustomers.net [92.184.124.10])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4B56165EE6;
	Fri, 16 Aug 2024 00:58:05 +0200 (CEST)
Message-ID: <7c18c2e5-9a5b-4ffe-ba0a-1ab33f51796f@slint.fr>
Date: Fri, 16 Aug 2024 01:01:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: emmabuntus wifi
To: rodney jackson <jackson.rodney.1970@gmail.com>, blinux-list@redhat.com
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
 <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
 <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
 <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
 <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
 <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com>
 <55ddac5c-5f1e-41d8-b0a0-04de9ba2eb5d@gmx.it>
 <80016b6e-f9ee-4649-bfc7-e3eaaf9094ff@slint.fr>
 <dfe37f43-4cff-4824-98a3-03db71574034@gmail.com>
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
In-Reply-To: <dfe37f43-4cff-4824-98a3-03db71574034@gmail.com>
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

network-manager is installed so the graphical command nm-connection-editor =
is
available. The command line utilities nmcli and nmti are also available.

To help setting up a wifi coonection I wrote (for Slint but it should apply=
 also
to emmabuntus):
https://slint.fr/en/HandBook.html#_network_configuration

Caveat: I can't try as I run emmabuntus in a Qemu VM without wireless.

Cheers,
Didier

Le 16/08/2024 =C3=A0 00:38, rodney jackson a =C3=A9crit=C2=A0:
> now that i have it installed what would be the easiest way to connect to =
the wifi?
>=20
> during the installation i had it connected by ethernet so i did not conne=
ct to
> wifi during installation.
>=20
> any help would be appreciated.
>=20
> Rodney

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

