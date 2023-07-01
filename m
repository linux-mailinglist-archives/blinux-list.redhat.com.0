Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CA31F7448C2
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jul 2023 13:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688212631;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4Dhzmhyd6+MZ7FXEmP0EQwZWBq36nRo/1NOtoleVGK4=;
	b=VwoEK4WPUR7JHEb4WAcMrTjPyNlBvNfWSd6ztyoPBwDTwydn20I3GJScakHYvu3ncYN6Fo
	Zh3H3suk1zQuXRoAAFOr1aFud1Qb9+yI+dOp+HmqLqPpZ/X3ylZPYuxFoH55ta0AkQDd02
	OpluxZ5RLr71p5SraS1mKfA0UcqmCqQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-618-i0jRXbDgM6633Q9A_MyDSg-1; Sat, 01 Jul 2023 07:57:08 -0400
X-MC-Unique: i0jRXbDgM6633Q9A_MyDSg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7916B1008131;
	Sat,  1 Jul 2023 11:57:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C5591200B680;
	Sat,  1 Jul 2023 11:57:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 11BC91946A5A;
	Sat,  1 Jul 2023 11:57:01 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 1 Jul 2023 13:56:54 +0200
MIME-Version: 1.0
Subject: Re: v p n and linux
To: blinux-list@redhat.com
References: <mailman.1554.1688134875.3098363.blinux-list@redhat.com>
 <mailman.38.1688204274.1378982.blinux-list@redhat.com>
In-Reply-To: <mailman.38.1688204274.1378982.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:D333N1KIs2A=;lGBfL0vgQxUGb/dZqp2BDhiged5
 O5rVEtp86Km74hzmFv6AyxzkMuZYShhrPipoS8tIgJAda718O4Ki+1rLcSadsSU0TFdNd8clS
 7pJRQJW1ey8mspVo0rhIghPMXpnDe6pODfRC3xlm8yCRSKZ+gZON9dkMB0xOKQ9P6V01fL1z9
 JSvAL7Yl3F7339w5Ulg0tfPOMNvZwLipltiiLOxq4/je0t9iXi2K017bBHje1NZ1iEAE8c9lj
 v14XnVZpnB7fT9cexAQCoQDuJWmLh+bTNQISY2f/gsPXO8V8TzYO88axn5STWN/JnmQUiGU/t
 lrdSPGyFTd9l6ulaa7szYSVdm24TwTRuBpNeCX07BbGtH8mKHi/jkdSvmaOSzWkvk6mjVdKc5
 pgkzS/AX3NWjQ7WCg9buzZTASjaieTXZCbBN0g0zCeKZVWCqhnMPEBI3BC+ysP3ROqWcVbySO
 wji0wRzYP35B7jSMcJDemazg/gJCAySmwUHXoviSLs4zp83Z80kDuU+kBBcazf7OQAtdY56aX
 BNVQA+HkQGbrwUmLAdAIvfxpPySPrtRTOV+a6exMVUHUK5/H/0DsFbrv+kA7FV/ZTfnKlpzlK
 MNQr+3fpm0SEuzUUDxxKw8k9riscTbnAHB+70jAhmBzSQ4FkAGZCoEwxITenSCNt7E2SCzuxw
 k5r17mB9O/8FYv328LptIQ1rU/vOFT19Mt3Dgzta50OEn0+KvWBuJKkUA2+JrgIWBqiQ8u71Q
 IJbGOWjsNZLFrywlaQQ0eeqbJXKnuFNwo+rXHypUcNsm12lSEZ+5nBeJYCgMoGVGQByKxPatu
 DrPIetsWiNG9Bv7Wae5KbPVoDVhCWbZbymSlBhUJRsba0MpXSyDg/C+hNnPgKrl6/cHV8H0me
 GDY8/1i+0BMq9EitizlY0ujOPBKTmaIKL3iyNyDbSX6o/fxeGtF8h5/9IGJLxi9yNMOTLQSrH
 2+2KoJ7ZyFjqRBTnEfD9WZYtkSw=
Message-ID: <mailman.44.1688212620.1378976.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 7/1/23 11:37, Linux for blind general discussion wrote:
> When it comes to using VPN for disguising identity, personally I love
> AirVPN.
>
> You can purchase an account with Monero, without providing any personal
> information.

I guess the IP that is being used to create the account would qualify as
such! :)

>
> Afterwards, you can use the VPN in a VPN over Tor mode i.e. your traffic
> is routed through the Tor network before it reaches the VPN servers,
> thus hiding your identity from the service provider.

Not in anycase from the VPN provider, as traffic is decripted at the VPN
provider! :)

>
>
> The AirVPN stack is open source, meaning the security and reliability
> should be quite trust-worthy.

How so, opensource does not mean security, it simply means that you can
review the code! :)

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

