Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5BA44365F21
	for <lists+blinux-list@lfdr.de>; Tue, 20 Apr 2021 20:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618942917;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RaK+5nNUC8fMIyctiLsU2aF1FLjmgxAcrumnmLczY0o=;
	b=ah9nUWTQ+W8saUTWoudPGYaMS2a6xgGCc25pT9Mdhbm2ChSq1Qbc6nxbARAEVLKePUsqLU
	TqiEU6ErI2EcMBjr2o2AItwZDzYN9+FZp1bA8jJ015cN6MwOKnz9D5ag/OzGDUBU/XV/gk
	piBk2Phmx9gmqKHL+7e6+L4FAFxLtUM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44-UYsTIcDzNkiRdr_UcXAdhQ-1; Tue, 20 Apr 2021 14:21:24 -0400
X-MC-Unique: UYsTIcDzNkiRdr_UcXAdhQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89011107ACF2;
	Tue, 20 Apr 2021 18:21:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90AC460916;
	Tue, 20 Apr 2021 18:21:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 043BD44A58;
	Tue, 20 Apr 2021 18:21:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13KIL44t029053 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Apr 2021 14:21:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A533221CAC7D; Tue, 20 Apr 2021 18:21:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F28F2102FDD
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 18:21:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C9E7B802D1B
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 18:21:00 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-26-AfLhMIucPjWjJYKSpVs_Ng-1; Tue, 20 Apr 2021 14:20:45 -0400
X-MC-Unique: AfLhMIucPjWjJYKSpVs_Ng-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4FPsSC6Wj6z8tyG
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 18:20:43 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id hUVIWR3xrI6t for <blinux-list@redhat.com>;
	Tue, 20 Apr 2021 18:20:43 +0000 (UTC)
Received: from [0.0.0.0] (184-169-119-73-dynamic.midco.net [184.169.119.73])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4FPsSB5TlVz8sj7
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 18:20:42 +0000 (UTC)
Message-ID: <20210420.182014.652.4@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Re: Using Sox to volume Level
Date: Tue, 20 Apr 2021 13:20:14 -0500
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1.2104201924220.26713@willempc.meraka.csir.co.za>
References: <20210420.165240.599.3@[0.0.0.0]>
	<alpine.DEB.2.21.1.2104201924220.26713@willempc.meraka.csir.co.za>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13KIL44t029053
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks, this one did it.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Tue, 20 Apr 2021 19:28:59 +0200 (SAST)
Subject: Re: Using Sox to volume Level

> for f in *.mp3;do sox "$f" tmp.mp3 norm&&cp tmp.mp3 "$f";done
> Regards, Willem
> 
> On Tue, 20 Apr 2021, Linux for blind general discussion wrote:
> 
> > I have a playlist which I want to have all at the same volume; some tracks are loud and some are so quiet I have to crank. Not conducive for a smooth listening experience. What can I pass to sox to have this directory of files leveled?
> > for f in *.mp3;do sox --insert-fun-options-here "$f";done
> > Like that.
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

