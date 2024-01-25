Return-Path: <blinux-list+bncBCV3N6GOXMCRBF65ZKWQMGQE5EDD6AA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id F189283CBA5
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 19:55:20 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-68086d6c953sf93597366d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 10:55:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706208920; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pm2cJY1vRCw5t2buhsSnbeXesB6NvWNpi0fv0KokZV9Xs9JJFsSuUFS0J45uwCG5ps
         Sk1ZOiQ4JLZSO3sRzzjo8PMzEJOrt/2T8h8ATypgpOAuSKAxrKSNOdE5B1jEYB0OwXvY
         mem3s9ALIVpbFVpSkeC3RWKLh9lEEEfOAXgu3bGv6ZBBPcR6d9fErtUzz1vjxPQ8GVie
         Ta82jJ9yJrwPtBThpBsqJEBB3plGmJcbM1s4l1DD0K8OR3r2q+wsOQfJUJQFiTCSVzu2
         K3gGTCaibF+27XzAV0QA/dmJpCJNNr3O5eB4KxnQFFwgw5fzB44+I/oxtiaZ5CCYm7Yd
         83wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=6PPowpp2u4fHJI70Kkerp7H144rA6JEyKpLE+qo1CJU=;
        fh=2pips1HtnGE6LSN6UHQM0eLRs3d9KWY+muPF9m0Xi0Y=;
        b=qJU6VtbNIZBU2C42LwCMFwI9M0159VFDo7JWLJeAoEPZrblNXA6pwu8KsBtUgcZFaX
         nDpzAn8iD6o7v6s8BHXsuiWCcoDKqifss0y7f8lZVFr1KzHoWlb5v6BeCOoGQfS1rWjv
         NEc1Y5qsXnws1Ty2mgcD8JUqkjhDNooScAWn0e+XQFcVll2mkCx4/wp2BUf9O9BGIKLO
         OFgvmYCsm2/TlKW63hoYzcXvsW5aEs/G/+izSl3EOAhgOACcb6TbiybvkQvmz7P40Cgg
         euwjArE95H3w2WgLZyMlZOu/glKXyTwz9BldMfH2JyhkwDWg2unUiIiEHRwjrucfsCDU
         fWZQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706208920; x=1706813720;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6PPowpp2u4fHJI70Kkerp7H144rA6JEyKpLE+qo1CJU=;
        b=BVYNBYMDwNPEh5RIE6kDcycp8MqXaDdMZ9qeZ82e39A1a+CHGQs7wFaTuV92dAgKf5
         JEQpcycdejx+cYt8q6+CgewFqN/wCLhczJrhFDuxgePLg2ycqB27GBGgJxDiYQAKg+8y
         WPvL8/+/YqEHO+m/aBWdrl0E0dbCkP7tihhhGeiIE3q303miLkj5z3K1G++4wlONOJOH
         sXVuKpsbIIeF1PiWlfc1CSF7JwRHMjZqDrvYNyCjtv+I3M4tvi603e87d5P/7j2FOia2
         XFYUxXIgxDs00UZ2poDuus1CA4+LyS9L7+F8QgjakVC0311mYdXrqovGBmuktZ2x1VBz
         TDpw==
X-Gm-Message-State: AOJu0Yw/GOyxsOYh+5kCO51PkrAt8HwZfAVFPYW6OIYn1vwb/DXNqVjy
	qd5U+2G8vztwho4Z4rw2LJni6pqKtHRLuNP/SDE5avBldcX0odEdi3aXzCJbuUI=
X-Google-Smtp-Source: AGHT+IFUjqua/RTVF8pQE4xVfPfOTDkRksxGYRO986Dygk3hcmoRlQb7va/zcyqqH9SxQFtDC2Y9hA==
X-Received: by 2002:a05:6214:484:b0:686:aaf0:4bc with SMTP id pt4-20020a056214048400b00686aaf004bcmr115204qvb.97.1706208919625;
        Thu, 25 Jan 2024 10:55:19 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5c82:0:b0:42a:5b85:3456 with SMTP id r2-20020ac85c82000000b0042a5b853456ls2692676qta.2.-pod-prod-08-us;
 Thu, 25 Jan 2024 10:55:19 -0800 (PST)
X-Received: by 2002:a05:620a:2052:b0:783:2e5a:7129 with SMTP id d18-20020a05620a205200b007832e5a7129mr140059qka.132.1706208918798;
        Thu, 25 Jan 2024 10:55:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706208918; cv=none;
        d=google.com; s=arc-20160816;
        b=EZfyQfOc5gRVjpg0zNIovbxoGSexaJd7kz5n/ku6Dady5tn95o1+sqz89VVDx2MjDD
         QRJZE/vm9CPDwIzwfXQgErAC+T4SocnfFr7EOI9frjhSg9FK05MtxEq9VeItp42oj4Uj
         k51WJcV/9KjNfs0IXwbF+niMg5Tgj46/Hi+Oedq4nN9Za11MBFl6GdozKImY6IsqFn+M
         GFeprQcVskjbWGrOqKx3XHlsRZ6TrRQJurri1YGV5zA1OJ4xBsIU8IkACHeGQNYEjl4/
         VlApjf5nWqlVZ1N7VkKDlRRANjWGkDLry4QcMTPVBvRIWjpGHHP9HcMRQwS6d5ulUDsR
         ZM7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=P27M87YwlVHq9WtCQfsPv9v6UMM6NJyODqqLp6AiaXw=;
        fh=2pips1HtnGE6LSN6UHQM0eLRs3d9KWY+muPF9m0Xi0Y=;
        b=cD3najB9o9oQJzuuocydv6t7EfsmYwdWa8PsMbHeGwFWTn/Anka6tKE/iOi5qOOMbP
         wImrY8RiqlaEyPy38vaInAlZ4lnvT49yU5jUElJoWlA7nrkEUF2kNjRT/e08aVGc/jMt
         Sj0XdkSfcROJkCPYeSkk7Hon1MPJfR7isAxYW1dsSXoGt99eqb4kYxZ6h9eoLQGz21zX
         6cTAnNulSJzRrpjXAADbbD8+fb4virWHvpb5BC6XvNmfaCwswct+pbj4ntJ/ImUTGKTP
         LwKkXnjC3m7FENj2KzAS9q2PijV3pX1DMnHQyypDnu+yYgJ8StCPItZ7RsokOzhEVKnt
         grIA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id o5-20020a05620a110500b00783905bf894si13109058qkk.163.2024.01.25.10.55.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 10:55:18 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-453-fIPgxC_EMHKhTH2QfS6hBw-1; Thu,
 25 Jan 2024 13:55:17 -0500
X-MC-Unique: fIPgxC_EMHKhTH2QfS6hBw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E760C29AC036
	for <blinux-list@gapps.redhat.com>; Thu, 25 Jan 2024 18:55:16 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E3FB11121312; Thu, 25 Jan 2024 18:55:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCACC1121306
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 18:55:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8B8F83DDE0
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 18:55:16 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-629-p718GJBgNF6yXRIn_DaNlA-1; Thu,
 25 Jan 2024 13:55:13 -0500
X-MC-Unique: p718GJBgNF6yXRIn_DaNlA-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.20] ([136.54.145.217]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MpUZ4-1qjoRY1UYG-00prsI for
 <Blinux-list@redhat.com>; Thu, 25 Jan 2024 19:55:12 +0100
Message-ID: <d9584471-e27e-4fa1-bf3d-80eabab302eb@gmx.it>
Date: Thu, 25 Jan 2024 13:55:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Something small to install Linux on.
To: Blinux-list@redhat.com
References: <A9534E5B-88A3-4F43-914B-846CF6F8E465@pipkrokodil.se>
 <ZbJ81eC3H6fmtfoC@thechases.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <ZbJ81eC3H6fmtfoC@thechases.com>
X-Provags-ID: V03:K1:G8Nxa8g1MBPiFsfGo0iSJZe+YUaZMmKZMAsvtya1yXpPwNrkJwq
 6lCYlgXswBvGNFPKh8509NVjcFxPAfTMDSPHnCgsyuOyiFbk1Xb8MA39oXos13i9C85AvQw
 Xm9oD7befkoSRaN3/zkleFzQw5j2FRYPBfUk6D8yUdL6YxLU2STp+89JWdD8Viixn2Rf241
 qRV7+5lyUaBGu88MZKdqw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:TgIWkSsI8xQ=;us2N6kTlOKYILVxuQrS9Z7QcaG0
 xeF7LxKCXo2hCCSqwe0uvQPmlKOtEss6m7fFqeqme//LiYEYUvTqoAeXrJ6suRa74fy901drU
 Kspy+kKT1RSnUGr1yvpBpkBtgJbhV2Ase4VcXrN8xWLH67xqE2HWLXde6JZEK9knZfYcBV3Sq
 tnxNNCNVrM9zvukNWCnBhy2gd1kG4Q14mLiJ4wLjFIYqb833kjjaE2vRg5/fVmJH3LwtpWnzb
 mNQ9/x3ce2S5rN2h96FjU1Zkp4GJMjir+2NTMpU17t8c8WFSXJoCJJzKOgxe4VRm/JIRpOGa+
 tsz/4Dh6MA1+v/7BduLsqHLEb7pW4XBLnTbGWYlzDAbNaxn3M+4hs/plmuysbJQNRRiSbGvd0
 4x0pgz7w5ML2Re7ONH2enXZGVL1fOcltzrE9L53iqiiRu7lFdYkbvlwMFHTyypeHz/1SxnUVQ
 z7mc/DNwDpmQFm9J3h4iNrKs+CByRYCt414VeJGP9XaicZjzXpb2B6LXZ5LETj+GcTy9shoxh
 pGSbNe4lSZY8NNvNgmWOEkz+umubPr4RK699uWQj/BvK/JrMbcy8b5ZXRGOUTDkrtbQjREby2
 4DsRzo+WGutwkbkQxSBgiNteK9zQeSoWz3OzBfFdzrykItcAirGxn4u2ep7e3cHKm+u6JIS3v
 SEHTZEDKY+Ze4yJ+LaPNZKBl2fuGaZo01Mdl+YYzzXwOH5qGFPqpSoy3j4BFphHbDCVdErrj8
 hhU5mWCfmuKjkn2B/EsefRIsWUUSA1qqIcnkKYE3VBuMCrKtlzAUhhoiaM6aY/RODZ7oI6mgT
 xv2SGb3zgoFuZJqLfvA9rhijR90TX1XhAL6rJYRCc0HuVyfHMt/LUOyDfcyX7JueUj6ibeYUJ
 JLxD/mXT1wJCLkz5E8555zEFbwJSmIJUEo6r84mSRdmVLloU3NGgYD17Jf1SSqKRqVNA3umsr
 4S/bV1Okvln8+X7uWk/Dtth+Z4c=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

My apology ... I mentioned two ports on the back of the 400, but it
actually has three. One of them is USB 2.0.

~Kyle

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

