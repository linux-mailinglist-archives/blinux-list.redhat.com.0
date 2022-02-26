Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA624C5516
	for <lists+blinux-list@lfdr.de>; Sat, 26 Feb 2022 11:08:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645870101;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zyneNlnkDJQQT/7oukhECHMCvSCXhPDHs2amkjdVK10=;
	b=MqqzQnCW5JWVSYnLiW+KGMV9TZzfoXyyAFNvIktxpNgjhNO5UIAIAF+00Uix7ZyRqlcHyE
	nBwESR9mLErNdsNnXf3SckGvoRGNPAaMviC/6z2dohHNRCKE3zA6qgeyCcHjY6TrH1QcAb
	KwTKyDk7i600TE2HKHZP2An7eJ8ywZk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-50-VVWWxNQiNji7CvZz_7X5yg-1; Sat, 26 Feb 2022 05:08:16 -0500
X-MC-Unique: VVWWxNQiNji7CvZz_7X5yg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55DEE1091DA0;
	Sat, 26 Feb 2022 10:08:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A936895B9;
	Sat, 26 Feb 2022 10:08:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0AEB34ED27;
	Sat, 26 Feb 2022 10:08:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21QA5SUr032637 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 26 Feb 2022 05:05:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 09447492CA9; Sat, 26 Feb 2022 10:05:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04C23492CA8
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 10:05:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5DF629AA2FC
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 10:05:27 +0000 (UTC)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-601-vDdmfWDTNEqz1hhSnvrTrA-1; Sat, 26 Feb 2022 05:05:25 -0500
X-MC-Unique: vDdmfWDTNEqz1hhSnvrTrA-1
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 1A8D0348
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 10:58:39 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 14MaP8LxzO_k for <blinux-list@redhat.com>;
	Sat, 26 Feb 2022 10:58:38 +0100 (CET)
Received: from begin (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 33002331
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 10:58:38 +0100 (CET)
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1nNtqW-00D83A-Vo
	for blinux-list@redhat.com; Sat, 26 Feb 2022 10:58:36 +0100
Date: Sat, 26 Feb 2022 10:58:36 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Do we have the sleep function in Orca?
Message-ID: <20220226095836.lftrrnevabjg5bnj@begin>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <877d9ixl4s.fsf.ref@yahoo.com>
 <877d9ixl4s.fsf@yahoo.com>
MIME-Version: 1.0
In-Reply-To: <877d9ixl4s.fsf@yahoo.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: hera
X-Rspamd-Queue-Id: 1A8D0348
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[blinux-list@redhat.com];
	RCPT_COUNT_ONE(0.00)[1]; HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]; MID_RHS_NOT_FQDN(0.50)[];
	TO_DN_ALL(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+]; SUBJECT_ENDS_QUESTION(1.00)[];
	RCVD_TLS_LAST(0.00)[]
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

Linux for blind general discussion wrote:
> Is there a way to make Orca sleep when you launch a programme that
> self-voices or a  game?

You can press ctrl-orca-space to start the per-application profile
configuration, and disable speech there.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

