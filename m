Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D336D4AE669
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 03:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644372743;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tdszGbptBN23nKdaYbl8f7Lu9lwS0HiTbVfvngJ/u+Q=;
	b=HUsyGRrvi96ykKY/v6hVjbnvAsKZzjbYCaPESTsD/1HeST0RE9QyFhFtTIDmCYX+ZYih8B
	NHZyMKuVSDyEnkhXdEFCiQ+f/Z/w1p1rMYJsXSo3rfBygS7tfJqsZ32WoU+PFUyhklj5+S
	h2twbcMpyFJV3O4pHJMwTIvx1CliqmU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-372-oTUjHSBzPdO2Zmu4dbmjBQ-1; Tue, 08 Feb 2022 21:12:20 -0500
X-MC-Unique: oTUjHSBzPdO2Zmu4dbmjBQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2FC9100C662;
	Wed,  9 Feb 2022 02:12:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90D55879C2;
	Wed,  9 Feb 2022 02:12:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5F98F4BB7C;
	Wed,  9 Feb 2022 02:12:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2192BxeI016988 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 21:11:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 21128C080B3; Wed,  9 Feb 2022 02:11:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D396C080B1
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 02:11:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03E9B185A7A4
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 02:11:59 +0000 (UTC)
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-263-mkTvo3h7OaK_a_ga6xr2MA-1; Tue, 08 Feb 2022 21:11:57 -0500
X-MC-Unique: mkTvo3h7OaK_a_ga6xr2MA-1
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 6484D188771
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 21:11:56 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 5D890188770
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 21:11:56 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [107.181.177.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 00E4B18876F
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 21:11:54 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.94.2)
	(envelope-from <joelz@pobox.com>) id 1nHcS6-0002qa-R7
	for blinux-list@redhat.com; Tue, 08 Feb 2022 16:11:26 -1000
Date: Tue, 8 Feb 2022 16:11:26 -1000
To: blinux-list@redhat.com
Subject: Re: De-arrowing my system...how easy it is?
Message-ID: <20220209021126.77jrwzckqpknzfm7@sprite>
References: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
X-Pobox-Relay-ID: A67A7D24-894D-11EC-B544-CBA7845BAAA9-04347428!pb-smtp21.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 2192BxeI016988
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Do you want to change key bindings in the console or under X?

On Tue, Feb 08, 2022 at 12:14:06PM +0000, Linux for blind general discussio=
n wrote:
> =A0=A0=A0 So, this is something I'm wondering.
>=20
> Given I'm on my laptop currently, I'm wondering how easy it'd be to shift
> the arrow keys function to, say, control+shift and maybe the vim key
> bindings so I don't have to take my hands entirely of the keyboard to do
> things that the arrow keys do, like neavigating a web page, selecting tex=
t,
> and so on?
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

--=20
Joel Roth


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

