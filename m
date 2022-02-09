Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AB04AF74F
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 17:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644425831;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6BEbBsyq7+NyA9I3pZH0LAL3cyPsigruO912EuuU1GE=;
	b=MOoTip1A3CCw4I2ttWg/6HHFw7gi5faErikbrSmRepmIrlgGID/yTm/6K44BWlX1mRB6Ao
	/496P9pk2D6i1m0BBzUY+AkG53gDadHx1wCJTkewKmglsHzWzKgEjM6RUm8YAmYQNh37fT
	RsEjMpvDGZjT2WLzQqq9mcH/mwzJwzM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-240-2A-dIkQNNYCx56e4Iq5p_w-1; Wed, 09 Feb 2022 11:57:07 -0500
X-MC-Unique: 2A-dIkQNNYCx56e4Iq5p_w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6CA4C64093;
	Wed,  9 Feb 2022 16:57:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2200C753E3;
	Wed,  9 Feb 2022 16:57:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC72C1809C88;
	Wed,  9 Feb 2022 16:56:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219GupMa019527 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 11:56:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 95E34492D1F; Wed,  9 Feb 2022 16:56:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92216492D1C
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 16:56:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6EEEE3C01C22
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 16:56:51 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-380-w5sv9KgKNYCNon6onyOhXA-1; Wed, 09 Feb 2022 11:56:49 -0500
X-MC-Unique: w5sv9KgKNYCNon6onyOhXA-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx005
	[212.227.17.184]) with ESMTPSA (Nemesis) id 1MeU4s-1ns0V90Tno-00aTON
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 17:56:47 +0100
Message-ID: <20220209.165742.812.14@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: regex help
Date: Wed, 09 Feb 2022 10:57:42 -0600
MIME-Version: 1.0
In-Reply-To: <7b45db32-7c88-03e9-ce04-9b7295fd8e37@gmail.com>
References: <20220209.123818.520.13@[192.168.1.100]> <87ee4cdrvs.fsf@yahoo.com>
	<7b45db32-7c88-03e9-ce04-9b7295fd8e37@gmail.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Provags-ID: V03:K1:CmE++bigbRzJ/JvJdITiS7TSZ5F2+h50mG5v/qzzmvx/1q0I9uh
	oRKDjzZTsVqu4fqSKF13Ipa4cUFZzWYOcx0upw8ZTA7smeOiLZ7oe7+OSoshfmtX/V670p1
	pEUhuQDijro/+No8Uz1ZsPq+I2TW871mP5Mj0BswrEKGwVT/KjGUj4kNMRuoNnQEEYhf0N9
	CDBQzF1wsIEYGtvt5GWSw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UDyTvL3REbk=:DKbJmyt3uYpXfwVElgz1ll
	CVtY2RoguR0VuK63GO2yYI9o5Z3PqzwEiXclGit6IbarL4/WZR6ykTJz2z5fULycKtK91jszS
	R9xoOSCQ5zsB3adNYNwQJCd3i7j/+GbyujRwIAG0vkkNZsKudF+XdgNz+GaKr0yZgZH5+Tlqi
	ex1TBTR7orHKrdiPtBUtMpWIEfKmmT8TbVJ40RE/1kAyN+n/skREq6QlauKXjEAEz1hAeUuil
	YaIkqO42ZSn1F5ob1RjfbcIQ+nsv86HRrF48nWTRmFDik4NIbAb0wJZoXMVYbJplcVe0YjmMH
	tcBl/g1gzlZ91oItpiWC0/PYLlyrk3J0gOhDHlxf+sR5lP9teLkNsbCzLF0PTy2u54nIwhVq5
	1oIhWIKEP7aaC/tsG9sF/qZ2tOecAeD24q1eOIB5eu2a/Pwvom4K7d4ZBmfCK5+Y6+7QCSqQp
	udD5vlcb6SAmzQhZjg+pi/4Z25lqDapb99wvAuXEPCcet1B21VbEN/FKD/BgSTJbkX8rblmvk
	Xj0VGf+VqeFCwSximZ6T9q0VpzJ7SRqW8g6DMSidpvHvzsX5CLiF7IUQyBdTNgQZBUuNR3bIr
	S+Yj8wx2S2gmMR/fOOO8NuSyLdCcA/kPCa9VFr6Gf834gCXVTQbnemg8772rBI+M5q//50NQ9
	fKLLVu/IhwRqbFu37u5jiPTxBITqti5kBcZU//zKV5m8yTsXO8BT53MYunyjFfzTcswQf3OlR
	rOOppsxSDaDwZnxymX7XT3Xs+A2B5QFDxvVVVguhZUfzLrnUzKcq2ZOzYExn8oUSpAcJi+/mS
	xAo+eZgA1WVvOMySQ4jUY62RN+EaYBZUC3XHUEbGO3fdANqulwBPstlNuB0eFmZqg58NnfmmB
	t5LnoFINAL/yQNirFHqeVw7hlnwOvyFKMXp2XS6GliECJkXYYeW6plhWM/A/iibMVWU9MdvCe
	sBkhfjw5MkM/DFyls0/5mSs6KIiD5YM21GbL0K25BWatm/O8NgfUXxKUlgdRIiqcTkg4DtxY5
	MvtBrBGXbG9Ozv++QsebfRRHbglPCknDP3IxFakAnjZz/eqrzX3QIBY1yGN5KEojG9gAul+eo
	K4ivPrH0Dd0Kos=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 219GupMa019527
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

This one did it. Thanks a lot.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Wed, 9 Feb 2022 16:16:32 +0100
Subject: Re: regex help

>  > Is=A0it=A0possible=A0to=A0craft=A0a=A0regex=A0to=A0just=A0find=A0all=
=A0single=A0letters,
>  > followed by a dot? What file renamer is the best one to use for this?
>  > The=A0one=A0I=A0currently=A0use=A0is=A0brename
> Alberto:
> Hi,
> nice brename, I just installed and played it in last two minutes.
> So, try with:
> brename -d -p "(\b\w)\." -r '$1'
> Alberto
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

