Return-Path: <blinux-list+bncBCMKFVG4RQEBBK445KUQMGQE4G46AOY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 048867D8671
	for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 18:05:01 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-65aff02d602sf14060116d6.1
        for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 09:05:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698336300; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqsXeQwpVB0IF6CZHcmw6hvgOKCD0tf7oQJGQMDyGQuPNvELxU0wvuYWnx2PV/j0OX
         GYJxc2XLfPN4XQ0KtMExBUNLaKVglqZEZCYRmPWLWS8rhuAxdHJqUkc2vWVieayqVqp5
         yHGof/Adk2+enjJc3QgR0e6IICJbPto4h8F66ZxMrsizJICbP/zpxSL1m1e4ukLmOMYJ
         Doatrho1wJmvUcwnc1iAScaGm2+62hv8IYuUG9AsDcKsdC7pJL2WkwN3D8tg40BPM/li
         rKM6MkoutovaBdF6Bep/51GvxU7AKaKroouueRR6KI7XCQrAqq0T50ty6pnAIuxH8rg2
         q7og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=a+aQwvXyawHuV/mzCo2XBxTn4BM6++yDHHl/LpdopwI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=CG+Ie+NsPYNiL5ygefIsTtp2woJnM2R8kAFHIuM1wSyJO953HS5at9RcTx7qkOGT0T
         cEtOcAE4XmSngQNnwbiieDnPCwIVYQfYpOJCTFTlniwjE6kcFYRJ8J5oJVpnWikR9whf
         fKDFnlD77QIdjwPAFg3AJASj5FD6YJ1GGo597m/x8U3NhUJD/4HQ6cAO6s/YG+s1cwEU
         q/GJQOnBzDw2VLqlFpZSviqU1ZZpUGYJ4y4lA/UWKaMAW3RT8m+WLT5tIkPYcrqN6uO8
         r3xT0sf5LBBPt3qVVZyQHl4fhRlqX0GjX1j/uEvur2phMx6GeI1EvNaAyOfffM9wyWKb
         oSgg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698336300; x=1698941100;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a+aQwvXyawHuV/mzCo2XBxTn4BM6++yDHHl/LpdopwI=;
        b=sRcedo2VN4hrrdRy6a0VWV8y8gUFtHcnByV8gB0s5uMs6jwH2R/Mfv+kwHg5UEHyM3
         5NbtgJksv6R+b9GqPUyGBWY6KowybikGg7TtQz+36wxNL7iXGri0/xEMYy6EcLwq7q+6
         ei9DrZUorLw/XgIqBPdQJQdCopoFONMqfGVUOYPRqi4BvuLN6wgXouTVODeRCSc9sNl7
         ThX0R3BEs0y38uTAXjLzj/ZWe5B0eOYuLXi3uX7/9o92x6lPWsBB7/obU0IBOFiMAfcE
         DswpsbPui2qpMPs1Gt62HeJQtN8w/eFSNl1VSOy9vN3yXN967hQP6KKbeXJfwOQ9kV0u
         pIPA==
X-Gm-Message-State: AOJu0YwMn3nQM/IO0wJE7iItefA1EpZ9CuCxqVNQf+rZFkics48rFIsj
	awDqqHr0u5IXaEOIOScfZAxJWQ==
X-Google-Smtp-Source: AGHT+IHJwU2NAtgHdB+K/4qn6x8kJpko8gtfZjyx9l36TZZkIeLhX4iubenfy1dSa+9sUuSXDQJ6TA==
X-Received: by 2002:ad4:5bee:0:b0:66d:3021:23a8 with SMTP id k14-20020ad45bee000000b0066d302123a8mr23863qvc.32.1698336299935;
        Thu, 26 Oct 2023 09:04:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:cdc3:0:b0:65b:e4f:d22f with SMTP id a3-20020a0ccdc3000000b0065b0e4fd22fls146010qvn.2.-pod-prod-05-us;
 Thu, 26 Oct 2023 09:04:59 -0700 (PDT)
X-Received: by 2002:a67:c31b:0:b0:45b:ecd:98c4 with SMTP id r27-20020a67c31b000000b0045b0ecd98c4mr38369vsj.16.1698336299032;
        Thu, 26 Oct 2023 09:04:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698336299; cv=none;
        d=google.com; s=arc-20160816;
        b=jx5zEIeq0EeHhOmd5J6C43NWKLoi7W7VeabcUNCdgtR9OHJn8pA8w43/HiSaGCcdbC
         SHVEhAlt3Q6hmh8Q9alN8towXD2S0aLwsXpAXKdI3Dx7dbXxmBZmuJBhJfApXXiRLAdr
         CACZuMld56/OlXdLmf83RtRbRZaNb5NWKrrxdttWa+1ksPgUoJMET6r/7AEpMJqvkCOa
         TcukSDs63AfzR6n5VM3tVK0147Pz7UYO4B9RJLpmHoGWJBSmw5x01sAZmb2ywtSfh22A
         cJc83MF0fbnjFLSg8+SHuzN2PKEHBMpXM2K2QeR1A4CYeReZoG0f6i8IACh/gPT9m2zF
         1Akw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=b6vmasS0tJuN2n7IPJM1vFdwBrgi20z2EHLPzEoSzWQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=bwJQxLnbtKFuClmKEwCernJDxR9GW1+2kliOC/OBZcOKv3ZXMn2bgB5p595DG3FwNF
         ZfxZK8iGCruPgHm2RBtEahVu4rgXl7An5n05wc6qzS9kRe/PiE1f2M5WmSZATVLsodS5
         GJhB33PjikYn4OodTOoAHOKV4UfOdlPYKrLqGdtTFHlUtdTxE6MrMmF+cOz/modpRVBL
         cEVb0N2FMifp0zxIzhD9YpFK7fu0ATrtMjl5Gb/x7r3IjWMLM5FaNEXh5ZLcTu8aHJRZ
         4Vi+ph2lnAbfqCrDZ+0Al93prSFV7I9+Tv+mrzu4IK11hcl+8li7N5Ju80O8QANNlP6X
         7J2Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id g17-20020a056102081100b0045460214089si1560681vsb.528.2023.10.26.09.04.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 09:04:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-342-zGf-1Tx-On-chfnspz8PTg-1; Thu,
 26 Oct 2023 12:04:57 -0400
X-MC-Unique: zGf-1Tx-On-chfnspz8PTg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C370B382156A
	for <blinux-list@gapps.redhat.com>; Thu, 26 Oct 2023 16:04:56 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id BF6B11121320; Thu, 26 Oct 2023 16:04:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B74BE1121314
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 16:04:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 811C13821570
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 16:04:56 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-137-rynSBuzPPJaiESem0e79dQ-1; Thu,
 26 Oct 2023 12:04:54 -0400
X-MC-Unique: rynSBuzPPJaiESem0e79dQ-1
Received: from [192.168.41.245] (92-184-124-67.mobile.fr.orangecustomers.net [92.184.124.67])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C5C53C2EBA
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 16:04:46 +0200 (CEST)
Message-ID: <e5b85119-9e37-439a-aa0d-d77a0a3d970b@slint.fr>
Date: Thu, 26 Oct 2023 18:04:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: seeking a sftp site to test a problem?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

Sorry Karen, I can't help you there as I access my VPS using a RSA key and =
a
passphrase and can't share these credentials at all (they also protect my e=
mail
server).

Just to clarify: you are trying yo reach your site which is running Linux f=
rom a
Windows system, right? I have found a link to sshdos here:
https://sshdos.sourceforge.net/
hence my assumption.

If this is correct you could instead try putty, in the hope that the issue =
comes
from sshdos itself. I suggest that as according to
https://en.wikipedia.org/wiki/PuTTY this software includes an sftp client n=
amed
psftp.

Also, out of curiosity, what is shellworld? I couldn't find an answer using=
 a
web search engine.

Cheers,
Didier

Le 26/10/2023 =C3=A0 15:42, Karen Lewellen a =C3=A9crit=C2=A0:
> Hi folks,
> its karen Lewellen.
> I am having a computer built, with=C2=A0 a problem coming up.=C2=A0 in fa=
ct I have the
> same issue on this older machine too, which is why I need your help.
> When I access my workspace with shellworld, either my personal site one o=
r the
> main one typing exit causes the computer to reboot.
> The person building the computer has the same issue, typing exit causes a=
 reboot.
> shellworld is my only access point of this kind.
> What we need is a sftp location, user name and password, where we can tes=
t if
> the issue is general i. e. network card, site specific, or tied to the sf=
tp client.
> Can anyone share a door?
> Will likely not need access for=C2=A0 more than 48 hours.Thanks,
> Karen

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

