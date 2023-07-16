Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 600BC755013
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jul 2023 19:30:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689528606;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=KB3OJanByQgX0f0DnGTC1qDsv+Zp0JVBZ9OwgjHjeMU=;
	b=NUYBbMum6uAcEXr5qTHjrBfItpKbAH/calPkLYcT7SHAa2q3lvMycRl6dSeV9iFfUMjZVc
	uNsHMue4zsqtrKrxQXPWucaQRiXNvVwNdEIlRwSwMGgFYyc3iv06LUHu4Afytr5xpPqEf5
	v02lFwrjpQ2gOtmA7eLhpLq1foj4Tlo=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-395-u5HacRytM9y2Jo9vq-AOUQ-1; Sun, 16 Jul 2023 13:30:04 -0400
X-MC-Unique: u5HacRytM9y2Jo9vq-AOUQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D29B53C02B88;
	Sun, 16 Jul 2023 17:30:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 57B0240D2839;
	Sun, 16 Jul 2023 17:29:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E28471946597;
	Sun, 16 Jul 2023 17:29:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Attention chime: the podcast client
Date: Sun, 16 Jul 2023 12:30:20 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.131.1689519363.687818.blinux-list@redhat.com>
References: <mailman.119.1689509513.687817.blinux-list@redhat.com>
 <mailman.83.1689515407.687813.blinux-list@redhat.com>
 <mailman.98.1689516548.687812.blinux-list@redhat.com>
 <mailman.131.1689519363.687818.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:G9q+QPdHijA=;ggXkerfpmDTDNFFJwY3M6Av7YCC
 Q3KyU0eHwtL7Rz2McS7PnXi6cnOzxYGTubGceUTN8Spw6N/EYRlGUdefhgPUAebQfz8n6//Ps
 g6NATN4A89lTk3cx+GL/hLCATAF1yzcp8bid2tlJfxD3B95SOcQC1tfE71lQdj/hkOgZbb5wc
 bsyyPm1WXgyIBQ5wthiX8gTAeeacQR/XWmglobsrlgBMwGJ7u+TVkNzZD+MFQopNIY2dPP7wT
 p/TnvCCysJzRnHB9Y0j4Un+hGcfuySXeHczs2ppnLJqPs+QLbAXMi69Y6XNrl/+DJbyc0IOcD
 cB4eQlXWvtc6X96XvBFgLerZkVeuL/IpEi8wndWsnqMCpd/p2tbohaegCMCo+GMyMULZ9Wv4v
 L2f1Hd+l0ZU5ooRXLmsX+KFoWKMoxePIdVuO2DRgK7nnGCIshMI7JAKd7sJwqVhAqPm+xErBG
 GgPqb8arDkaXCqvfy45rn81+OWRtfl8S/JqxidxJU5gkHC/UDyNP2qaltlDBSJQznFbvPGfvo
 NwQMfAV0H8kS/iS//Mi3HSrJW7yN2N7b010db505hjftSDpL+YfOUUSzN/Mref2LULfbBgvxA
 JmzfDZjTOUDm88rlsDfnEsF+mGgrNiL7Fro0n+gR97WsNACiDArbEURa7TVZOQpv/FT6MiMHk
 +d3aPbFkC7uDLL4s64TlbpdkCDNH9GcviVecX+fHixu/I9dLEZIoXxAyzfOQSAp+dmlqYiaF1
 fI2gnQEswP7+16hb5sV6N216L8JFiz2j/03liK1gQQPe5nqro9AsqwcF1tPbS6ehFyxg+EOcD
 xrRsvjfn6B2Qru7bTrwGMT451dZvAy6r6dYvJWMtixsR2qawcKHZx2UPM/7Qn16msmNRrJ9HV
 iQsSmAf8C2+VZFUtAkrWAGJnOWeAjqvlUaGNvpgvt6NkpoJJfQwkMTaRk5U8UPOUYfjpHOlCK
 9KsHKIbdks/tbKP70hGztNZurxU=
Message-ID: <mailman.96.1689528595.687813.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============1216680052984703962=="

--===============1216680052984703962==
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

I got it going. Now I think I want to submit an issue: number the downloade=
d files with episode numbers.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sun, 16 Jul 2023 16:55:45 +0200
Subject: Re: Attention chime: the podcast client

> Hi,

The GitHub repository is https://github.com/mlytle4218/pod-kast-rust

I suggested to Marc to package it for several distributions and/or to provi=
de
build instructions,  meanwhile I could build it on Slint as indicated in th=
is
thread:
https://github.com/mlytle4218/pod-kast-rust/issues/4
Contribute a SLKBUILD for it and put it in the AUR for Arch users should be
pretty trivial using the same build commands.

Didier
Didier Spaier
Slint maintainer
didieratslintdotfr


Le 16/07/2023 =E0 16:04, Linux for blind general discussion a =E9crit=A0:
> I ask because i'm on arch and not debian, which is the format you provide=
d.
> Thanks. Definitley interested to try this out.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Sun, 16 Jul 2023 06:50:00 -0700 (PDT)
> Subject: Re: Attention chime: the podcast client
>
>> While I don't, I will save your request for Marc, who put this together =
for us.
>> Thanks
>> Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


--===============1216680052984703962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--===============1216680052984703962==--

