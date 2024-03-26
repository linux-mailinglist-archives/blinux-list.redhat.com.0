Return-Path: <blinux-list+bncBCVPTHE7K4IIFEUNWADBUBBJURQCG@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D6188D096
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 23:15:31 +0100 (CET)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5a46b391b53sf4785275eaf.0
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 15:15:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711491330; cv=pass;
        d=google.com; s=arc-20160816;
        b=yGmxHwLGNkQM29AHpaq+qD24LtdZL3OEjlVQOajuMOOfXMauoAfeX8DkxaOO5wvZkw
         EDz1iPRjO29PpMVUZqVOBqSs5vFCSKOzemfl7e/yH/ZueiFTvn7hG2Czbcj7fawKtNyY
         1CYevK6pcLEvTQm+zv0n+fukDyLrNeSNos2Ejmdbf6JGNWdR/HUnGdBpQW0QW6y6iaWn
         DJ/PEiDGXvTgX08X4N1niAxFcbaB6VN6B/9bBuJgC045pepKY2TPPJWv4KrKXXak4XlE
         eb11QoILrqOzH7m/6d9eR+5T1HEJk2J6gXLWEai5JzkptybKtTG+38QuzGRMkWS+wS7v
         lxQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=f6RQ0d3zBVOezqHPYr2172w0ZtM2bUrmaU8PfQzpZ/4=;
        fh=WO76O1XSSwIYmOm9x35VZngzfvpLgKmL1EXpI/uqFyc=;
        b=iFSqE1dhezvCGc264oSFe85Z4ilniwz7WNpB9UbjL3rnGQHPZ58cInWQBEYpxEr/0J
         LB/tDR3flB9Y8u4RPuL25t0TGQqbbmDbPxy62e28CNO/Q2mOZ5whwvvMwHZBEUmCaumP
         bRyYisspk2wL6H9C/b8e1iw0ueF8RL2NGPNJzeOIV5iNFWTXV0/WBMc6ouwBCxx+nSbI
         ZEBPCFd5Ix4Amc5634RlmH9JZyOD9d7Bzl9ISrEoNJWKmC4BSAPj3nfgS4jEc/4XCefv
         iev3eIB8T38ESO/DqDTHBqVVoP5fGdo4AOW/OvzPJuaIU/3vah4I7QBfiqBU+0ZNT/CB
         GCZw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711491330; x=1712096130;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f6RQ0d3zBVOezqHPYr2172w0ZtM2bUrmaU8PfQzpZ/4=;
        b=kbbCmIl99iFSrGiJ5Z/O9iUeKr2xKZgXSmAybpkxV1gIjcZQoGYzXYX7Wlrq+Grcz9
         mG+mnuf23g4ArwrFrtRl8hs7nSbxj4KEGyt+uDNV3af6if6U80lWViP/sDZiWI63wFoF
         sfGeQjNiELFiO1gqbZya3lSoamnTvfWOEeh7vTsZGoFimZrBbae81K2mBqxcjHAXSkRr
         vskoQE3SIGMazkWoY7A/2PptCQm4AQvpI7JHY3ohSUWL0k2poMj3Hdrvb74c8RVZccMX
         zSCbOv9MfXcmDYOMbviRBLABU4tKJJvr86uFQcyWSIOxa5hG5MKfTgHzWCZPW30XSc9k
         mQ0Q==
X-Forwarded-Encrypted: i=2; AJvYcCVtW89EZD5nX2NJPcCWrXZPHWn8xlJUKzBmDLjK1YmWSfG6y9ppXBkz6kCqQiY2fObt8EBSjss452xEVRjfJweBidyc+8+Uqukm
X-Gm-Message-State: AOJu0Yy19ke/UwAjcRno09aQEpf/UnyJfncvlmzcLb4DDFrQin+avbHQ
	3aXcHgeQNQh/UUfk+YceP4NN36pmkEGRYN03zGryWw4NaTzh+twYFGvSItlsxfI=
X-Google-Smtp-Source: AGHT+IFXEixz+7YrWi/f/09nHIWKu2boi5E8wrYqohufjIMiAKwFUEZEjK/51o7yB/REB9OFmdPm0A==
X-Received: by 2002:a05:6820:3083:b0:5a5:23fb:4477 with SMTP id eu3-20020a056820308300b005a523fb4477mr2572919oob.2.1711491330450;
        Tue, 26 Mar 2024 15:15:30 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:e0d1:0:b0:5a4:3b6f:c4fa with SMTP id e17-20020a4ae0d1000000b005a43b6fc4fals696642oot.2.-pod-prod-02-us;
 Tue, 26 Mar 2024 15:15:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWDhVwmOLwSxCXYzxnp6W5nAAeB0ejGpZr9hrP/0nw8MvJIMWL3cqNhwxfV5R0XjNNQUvZjpdCwTyh4I8nLST6yE8ji8lDbD9To6+FX
X-Received: by 2002:a9d:77c6:0:b0:6e6:8ca4:a6de with SMTP id w6-20020a9d77c6000000b006e68ca4a6demr2624775otl.20.1711491329733;
        Tue, 26 Mar 2024 15:15:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711491329; cv=none;
        d=google.com; s=arc-20160816;
        b=F7/TR19sEhV0zy9mLeuyxdwEPw+JigL+nLzVF297y5kET9eowQAE5CpAJvuncsR9Cu
         aBl2n5pFZKOz0IkqY8asBjYyiKuSJT+CXeAKW/8XebGdhIVA4E+FnvPGFVfdnkw3/qkg
         E831lUv7m7TyqaP2KUaNXp5ze1v6qkB1Gk4O5HJUuqsqkYbDIWkfulJiBMrEpI985LCO
         RRVNd3VdrQ4WN46jM1/1N0Fyw5KpL38IDT8fPs+9yoErS26B2/9P0tjMSFZLo1KJzyNb
         0F0nQv2abznjekqpR8WvQcIRAWkthOn3F/99FIutdIZUm3ot2pnapp8o/Go+kjMDif+N
         m/gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=f6RQ0d3zBVOezqHPYr2172w0ZtM2bUrmaU8PfQzpZ/4=;
        fh=ISBACCKYaUFcvdwzcLu0GMVPpgNsMnO2qtxZe5WiN68=;
        b=j3Lnq6plTIwMPhMTr77co0fQHnvRxmzcNds2komdg3Em5xzYUJeEaUAn5bad5YGJ6Z
         i9Q9YWI8jDMSPcX/75VpQEJy8gU2Wv2A2psNVbQfGdv88Z7cIBsksvBxebFh51X+J8p8
         Kis1TXREP0rx/VzfYxR1ax2jk5kH1l9diKaoonHwz/qs0Ob/D8V8ImQmUEflfLO7X44d
         3rBDWZWiwzCDIz0hTzsA3XPDhBd71d9o7vlPwLVMUUytxgTo8Auqzds4xeN02Id+/J4s
         nXCTFjZQYLgIT+UTumgMrYToGycoWNvTfSLljCkcKUc8gl5WoODEQlQCD5dCFKvgI1ob
         uQpg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id vr1-20020a05620a55a100b0078a2efbbaa4si8677467qkn.624.2024.03.26.15.15.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 15:15:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-386-kDzgXGwMM9Ga082NDRLPqA-1; Tue, 26 Mar 2024 18:15:28 -0400
X-MC-Unique: kDzgXGwMM9Ga082NDRLPqA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD4658007A1
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 22:15:27 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D71DC2166B32; Tue, 26 Mar 2024 22:15:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9EFC62166B31
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:15:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47F09101A526
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:15:27 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-217-0XKLMS2GMG-x6iL2V87l8Q-1; Tue,
 26 Mar 2024 18:15:25 -0400
X-MC-Unique: 0XKLMS2GMG-x6iL2V87l8Q-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id A653640508;
	Tue, 26 Mar 2024 18:15:24 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 76F821001AD; Tue, 26 Mar 2024 18:15:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 7688710007F;
	Tue, 26 Mar 2024 18:15:24 -0400 (EDT)
Date: Tue, 26 Mar 2024 18:15:24 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jace Kattalakkis <khalfang1366@gmail.com>
cc: blinux-list@redhat.com
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com>
Message-ID: <Pine.LNX.4.64.2403261814070.1398748@users.shellworld.net>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
 <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com>
 <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-387797274-1711491324=:1398748"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-387797274-1711491324=:1398748
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Gosh, did not even get the post referencing tedit..is it a part of the=20
Ubuntu distribution?



On Tue, 26 Mar 2024, Jace Kattalakkis wrote:

> Every time I try using Teddit I get a 403 or 429 though, is there any eas=
y=20
> way around this, or?
>
>
>
> On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>>  Hello,
>>  for reading, I'm personally using the Teddit frontend, which should wor=
k
>>  well in LYNX as well:
>>  https://codeberg.org/teddit/teddit
>>
>>  My favourite instance is thisone (since it's usually free):
>>  https://i.opnxng.com
>>
>>  Best regards
>>
>>  Rastislav
>>
>>  D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
>> >  Hi All,
>> >  previously, reddit worked well,  at least for reading posts, in both=
=20
>> >  lynx
>> >  the cat and links the chain.
>> >  Now, even elinks produces a blocked error message, my guess is that t=
he
>> >  reddit community is not aware of Linux and these tools for=20
>> >  access.Wondered
>> >  though if another tool already exists that might be a part of a shell
>> >  infrastructure?
>> >  With appreciation,
>> >  Karen
>> >=20
>> >=20
>
> --=20
> You received this message because you are subscribed to the Google Groups=
=20
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to blinux-list+unsubscribe@redhat.com.
>
>
--1949452079-387797274-1711491324=:1398748--

