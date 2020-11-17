Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8979C2B6AB8
	for <lists+blinux-list@lfdr.de>; Tue, 17 Nov 2020 17:54:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605632088;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8MLxk3STBCs7Tr43KwZuDKx8j3yoS1mWRYuERtkCOKk=;
	b=Io2XpLHpO9EgSgcrDgzwdu4JoXaqXPF17tl+lzzDSq+HjTP8okOQ+NSs0R977YgEHv6bYz
	agt3CSOYiXaWV7ucw0SBt0uDzqgRFy9Uam//OMBIEFNgW6f/kXll9dWXkWfZvXu1MGpgzI
	EcSsBtVpcKMjwN1v069MBhw+0vz1xSE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-463-AtKVBc6-O7eFvVT_7advqg-1; Tue, 17 Nov 2020 11:54:46 -0500
X-MC-Unique: AtKVBc6-O7eFvVT_7advqg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B12E59;
	Tue, 17 Nov 2020 16:54:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3ACB3619C4;
	Tue, 17 Nov 2020 16:54:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4FAFF180C5A2;
	Tue, 17 Nov 2020 16:54:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AHFFq9K017973 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Nov 2020 10:15:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A9C91207AEB5; Tue, 17 Nov 2020 15:15:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A597B207AEB2
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 15:15:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 35BB685828F
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 15:15:49 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-465--R5-atWZMseswoA5wRXx9Q-1;
	Tue, 17 Nov 2020 10:15:45 -0500
X-MC-Unique: -R5-atWZMseswoA5wRXx9Q-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.133] ([87.150.202.141]) by mail.gmx.com (mrgmx004
	[212.227.17.190]) with ESMTPSA (Nemesis) id 1MGz1V-1kQzr80OSB-00E1dY
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 16:10:41 +0100
Subject: Re: latest iso of jenux?
To: blinux-list@redhat.com
References: <fea4d0e7-5caf-f5b7-cf0a-5f3b313acb3e@gmail.com>
	<alpine.NEB.2.23.451.2011150949060.18575@panix1.panix.com>
Message-ID: <203c187e-eb51-f55b-17b7-2d34a6c0bbf8@gmx.net>
Date: Tue, 17 Nov 2020 16:10:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2011150949060.18575@panix1.panix.com>
X-Provags-ID: V03:K1:9bBO9TnUF+1US9m2Il550BUPRboJ7X6thjlusN5oCWSzUKvB3dC
	KKLjHQ1KaGy9lspy3Txkrsgx/Xc3mQkuEdZlXn384xqJIypD/jIkPswiGlYvuGCEsnSavOC
	ofjBJatPfjIdslPZH7PWmDVEvEU8MPhStwk7gppFzNtgRW/2yqTUYW1642zSDe8odHi15Ms
	QyDtONnkW3VtCKyBr4ptQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xl5sLpgU7Xw=:g3TkSKoGJdqQcjwakdlOim
	yQQI+oVeKlQQ/9gir6s1aLs0pZybibgKhMmXGlfEMLTH+JuDX8r1I7qBz9IgkOezwVCzVJlV5
	UP9OdmISsDKby6lhZd9BUX6INw/2FTjcOJvap0+dvk+wM7erSyAKZ9K+SuuvftKtaGga2qaaq
	DtcwjGXgr2tOn71CQplselodCyQzOQwcBHzmWVqMi0vGherHCnvP+a8YXpdL4iJ0IitAkBtIA
	D838p+lXzVwdE6v33eK13SsE+JBwnSJw12mS2NXoLrX5gEQ/0uWz0hl1v/O9Iv3qyCQPDZqcy
	Ke10I5LYlz+OGOSWinDjoIxBjCBCbAPqlsEcBCLP2hhmNCJOVtILmwtO87Lu6TYc/xLjn/l6t
	Z4sNnCtx0pbchqwvh6MDqf3UnGFtri2t3Iwyf8gV+RIlefXi9kKdfd/iO3GM1iifIzDeGa84V
	Dii2DywqiJcI8xUiS+UlpeaoZECVWR3KcBp2Ek2r9LD+LMVsCLnYxXO1oAVunz9jogRbuREk9
	5WglKKZH1+3tFw2pd+B6WbCwLqW6x9HxlBaZLq/sWRrWyvgDK9GX2anT9t9cxXvcvM5VVuL8z
	w+kpq2SUR8mkZZkfzpgM6rBbCSlL7Jrg+chBh1wDu2skrwNkYyjJv65M6Uh5jmBRVT/nITl6X
	hD0KSZrvLAxC10HZhchKmddveO/jP9cgWvHW+9ALmagn7L2FeBWsAup9qsuWDWWBX003kYAbv
	63cB2uticY6HJU6CeU3qNXz6cGarcfakr6RHLOtuZwwcmAbS8IMMkZD0DOOPD19OlUHk8lR5U
	aNXrRrI7Aaq8NGEK+8eSQq6RI0JWQ/BStFvzZVUmelKdL2GkP6cukwZsqb7Yx5glYneOqwQlF
	95BEYatvj+KxUTXlQgJaP2c8rIEnfrjlwIUaDDoosjbdJNv8dp0i2X1nh04FJNZrPLhP0ohju
	hjqX0OthGZS0rPnNEUzV5lP0MANs90gM=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0AHFFq9K017973
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
the given link says 404.
guenter
Am 15.11.20 um 15:49 schrieb Linux for blind general discussion:
> Try
> https://nashcentral.duckdns.org/projects/Jenux-2020.11.12-dual.iso
> On Sat,
> 14 Nov 2020, Linux for blind general discussion wrote:
>
>> Date: Sat, 14 Nov 2020 23:19:40
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: latest iso of jenux?
>>
>> Hello can I please get the iso to the latest jenux?
>>
>> Hank
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>
>>
>


--
.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

