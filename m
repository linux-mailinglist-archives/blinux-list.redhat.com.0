Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A07D7AC5F5
	for <lists+blinux-list@lfdr.de>; Sun, 24 Sep 2023 02:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695513941;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VJxfGopkTdg6fdrbc72ozSLjodqv14/DXNNdilXTuSE=;
	b=csjgKm4nUITJxA73Ycx9oUuA5P/P3aLCZf+0QMCzDAvKorbHdnL4VqNuSsIK9jLhUFDZ5w
	AtN7wtPVaSP1rbadaAmYX44/Fo7g+nH7zd9UG0b8hPjFelyYMTTolOWSiipvTzl3RQUhSI
	ASdw7uNU9IvF6dgvbPr5k6RqGMekfBo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-373-2wpq1DtlPAeF_LZdRe_nLg-1; Sat, 23 Sep 2023 20:05:37 -0400
X-MC-Unique: 2wpq1DtlPAeF_LZdRe_nLg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD53B85A5BA;
	Sun, 24 Sep 2023 00:05:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0DE72C185EE;
	Sun, 24 Sep 2023 00:05:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7330F19465BD;
	Sun, 24 Sep 2023 00:05:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Can I Translate Audio Among Languages?
Date: Sat, 23 Sep 2023 19:01:17 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.54.1695511852.4021078.blinux-list@redhat.com>
References: <mailman.54.1695511852.4021078.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:V98ncqWNJmg=;MLIcy8069FfPsowzgtZ2tAp9AEa
 USEoVK8Pqnjc5GE70jBlVGdff+wRf90oA4HMnUUtyKrZ6udtWIrFiaZS2/FoYIvRgpXtsjEr3
 5DliGWyFKPb88pUSMMiZC33zrx6c3zPsIdrZBfiOxp8zIVZTsSpF1zLFMCLAzQMwI5cGpgLT8
 E+Vblr93aN2MbW+kRzbyvAXUMMc8uT9JPfbXmYR75iph1OSuUnvqiGWRZZXD3WYGlz5sy81BG
 xwN7k4WHGkqG19GITgAdgUXY2PMGYYrho1v8ysVThcw95iJV5R1D/ldWyU2B9+/HEmfkvyiTC
 MVa/w7xfPLwrbhKWn0MPom8gnmfJ2Rd4aWBWzr7quBvBQaAo719DUgSO4ytd7qx/Cb7GwUTm5
 xcjx0FzobGlQr+BgxWLFREv972GSjfCFNE8TyeXYdn0J3utGavEqLAJ3d6Uu99UsFpom8zH42
 vnBp1OBjdPSsoFjDZrtoK2Vm+D/Sl69H2FFWQ6Kn/CdcvTq/FQu+Lmfp+Aa97OTZcHxGI1h9d
 IeGU2bj87jlZ8c43B9m4QvrlskAyb1ITEnuA20GKNmRORxQy70nO4560gxVH9I75OmThmmhe0
 KMQgZzAhNlgzHN5k6BfhYC+qOZdkMmQruW82qlT9XtvboqIORBRe/OqmqC92sslVB8qDbDGP2
 WANJV2tBFZ3WyQ+/iBAr2+/86YUYwtLgPSH99p8Sw+gHGRzrbEqjq1cS5gtpkPqQ+/GRrrqha
 Jsj3W/8TYYrBqwVk9rNPmSaV1AWWN/L+cADlGUIRqhGsqbmaUHwF/k+ZKSEOjKyYXSS1HKgZZ
 /+82hARf/Odx7ngX0dJTwBua03cHFd9EUnKnW9c6D4hAKea4i6an9vekJjx8Vo3WbQvnnAU+W
 m9/qDpQ9+FaFtqoKGVQDy7s3dFKfnKvtPPK+lBr2hwteTfsK4G+raKKaMnTJK5F++5t7FfyQq
 88oai7rxH161xFaS57yMStDiqjI=
Message-ID: <mailman.39.1695513933.4021070.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sounds like you want whisper. It's an AI audio to text thing, from what I understand. There are docker containers for it. Beyond that, I don't know much else. But you can feed it recordings and have it spit back text, so it seems to be what you want. I don't know how many languages are available for it, though.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Blinux Discussion List <blinux-list@redhat.com>
Date: Sat, 23 Sep 2023 16:22:01 -0700 (PDT)
Subject: Can I Translate Audio Among Languages?

> Hi All: Ideally, it would be wonderful if I could bringup a stream, lets say in
> Armenian, but have it play it for me in English. Otherwise, if one couldn't do
> that live, I could install some software in Debian-and-feed it a recording. In
> reality, I am a news-junky, but there seem no Armenian news-channels in
> English. You would also think that Google has translation services-and-they
> also own youtube, I should be able to pass it a flag to convert. I hope I've
> explained what I am looking for. There are several Armenian sites with English
> news, but so-far none with English audio or video. Thanks so much in advance
> Chime
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

