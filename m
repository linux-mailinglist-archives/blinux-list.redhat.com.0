Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 078822F94F
	for <lists+blinux-list@lfdr.de>; Thu, 30 May 2019 11:22:27 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BE13A83F44;
	Thu, 30 May 2019 09:22:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E9F77944D;
	Thu, 30 May 2019 09:22:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 488681806B11;
	Thu, 30 May 2019 09:22:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x4U9LvfT025493 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 30 May 2019 05:21:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 00CF56F921; Thu, 30 May 2019 09:21:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx14.extmail.prod.ext.phx2.redhat.com
	[10.5.110.43])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF90C600C7
	for <Blinux-list@redhat.com>; Thu, 30 May 2019 09:21:54 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 0BFDD3097031
	for <Blinux-list@redhat.com>; Thu, 30 May 2019 09:21:48 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id 7so3346822wmo.2
	for <Blinux-list@redhat.com>; Thu, 30 May 2019 02:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=3UTAJpQVpNGJAqpK+dyLCsQCZCVYoADdioQ8KcRiHTg=;
	b=kCd8w366MHUbRi3CGOE5ir1DiLhEhbAbqTqkSp4A4Rjpp/uDErUo7zLWi4jn80kg0G
	cpwJID/6+zYNbDfSXBvhVjbvaZlPeVOVBJYpgLjicVW0PKnRD7bAZ9UZj17348Z9z7G7
	lYdNA3rkMim6n4SuGVuGmTVmOXGBWNjWKvaq9fsTHGkh7wnx75FmAoD/Mt0NS8QX8dXb
	XC8U19WdhVcvNfBM83L/8zdA5KMdAn1Sa6kxvF2YKjOOrTkwyXcQ+Upts2+2NpzhJmfM
	r0RSVdg24QUziK4Q4/yDRLND0iG2ST9qkKQYxSOPgTuKLt2VJMwaH+99KIAVLTl/ETXO
	BhqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=3UTAJpQVpNGJAqpK+dyLCsQCZCVYoADdioQ8KcRiHTg=;
	b=PIDbPTLPq6X5GKA6Sel5NovkKqfl1bCbkMx0gQqgXCfBtMovjhIOGfLDwdiZwgY+Vi
	lK7esqTYIo8PJ4XRXuCGLAZxc9eElpJM5osIfbZLbP13o17Pl5n+9znd00LCTPLW2AhT
	mbfn9zCkNMzol8csDF4sHlTNvaJotxmuO2kGyIBVueOBx7argvglt1n7TpocbnYGmagZ
	PM/V9Dt4rXCmLMWp3fZLR5apSFl6zX8HnauEJC6VUrTg4WEIUPhk2ocxpwCwj7jIlNnJ
	2eF6Cge6ZZxJkpUtxOThb/BwGXU4s6y4QL7VOw6mPPE5MKm6zVEhacdJfmJJBSt4Aaa7
	ARRg==
X-Gm-Message-State: APjAAAW9qj6OUWXZdJYC0Vwmf3dJCGqMmcNbcgeisZ+20NhQxgsl5Za2
	Wr7TqEvia4YW6Atvd4PSqPu5kta9XE0=
X-Google-Smtp-Source: APXvYqznztp4BAArMY/CGVbiLMUonIi4v+2GxDI7GuCcChDCooOxxoqYK+K1g+Z3E7T5J+RGwRqAGg==
X-Received: by 2002:a1c:2d83:: with SMTP id t125mr1569019wmt.83.1559208106329; 
	Thu, 30 May 2019 02:21:46 -0700 (PDT)
Received: from localhost.localdomain ([2a02:d8a0:1c:0:6445:32bd:fd42:da45])
	by smtp.gmail.com with ESMTPSA id y1sm1690116wma.14.2019.05.30.02.21.45
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 May 2019 02:21:45 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: which python modules
Message-ID: <acbb03d8-1fd2-6f9c-5995-eb1a2380bd33@gmail.com>
Date: Thu, 30 May 2019 11:21:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.43]);
	Thu, 30 May 2019 09:21:48 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]);
	Thu, 30 May 2019 09:21:48 +0000 (UTC) for IP:'209.85.128.52'
	DOMAIN:'mail-wm1-f52.google.com' HELO:'mail-wm1-f52.google.com'
	FROM:'vlcekpavel93@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.165  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.128.52 mail-wm1-f52.google.com 209.85.128.52
	mail-wm1-f52.google.com <vlcekpavel93@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.43
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-2"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Thu, 30 May 2019 09:22:25 +0000 (UTC)

Hi,

I want to create a little game in Python. What I need?

1 window, 1 readonly editbox and 4 buttons. Which modules do I need to =

install to get sound and graphics, of course accessible graphics? Pygame =

for sound and pygtk for gtk?

Thanks,

-- =



  Pavel Vl=E8ek

i=E8o: 04619471
Slezsk=E1 483/7
737 01, =C8esk=FD T=EC=B9=EDn
Webov=E9 str=E1nky <http://www.pvlcek.cz/>
M=E1 hudba na Supraphonline =

<https://www.supraphonline.cz/umelec/446156-pavel-vlcek>
M=E9 knihy na Jin=E9 knihy <https://www.jine-knihy.cz/autor/pavel-vlcek>
telefon: +420 558436840
mobil: +420 732 122 696


  Bankovn=ED spojen=ED

*Vl=E8ek Pavel*
*2701033015 / 2010*
*IBAN CZ8420100000002701261173*
*BIC FIOBCZPPXXX*
*Adresa banky Fio banka, a.s., V Celnici 1028/10, 117 21 Praha 1*
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
