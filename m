Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 576C612DE81
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jan 2020 11:16:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577873814;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=n56Fd0TFWiWtbilqJXNxA5f+Neo8gpX3Q7OWuy63wo8=;
	b=MnTk2JtdXCdwgm06rP/hI/OK6YKeo+3CGjDWHoYYKz+4g7FzqX7FnIXMqUOFQBVF45ENpo
	5XyouvJUcfhVp42/48pDiZzc3GHV0ixgM/iKk6g3nI7SGUUvk2YOqJ1OsNMUplPusyNdEr
	c9tHKOiQtNHROrMOyj4QGZsbfCLaFo0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-378-81lJpATwOv-2ydyEeVjyow-1; Wed, 01 Jan 2020 05:16:52 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B6A1185432F;
	Wed,  1 Jan 2020 10:16:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05FE05C1B2;
	Wed,  1 Jan 2020 10:16:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D8206819F6;
	Wed,  1 Jan 2020 10:16:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 001AGgRM023710 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Jan 2020 05:16:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0B4BE2026D69; Wed,  1 Jan 2020 10:16:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 069A62026D67
	for <blinux-list@redhat.com>; Wed,  1 Jan 2020 10:16:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE457800FF5
	for <blinux-list@redhat.com>; Wed,  1 Jan 2020 10:16:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-46-q4-NGNNUPpaJlODvElAN2g-1; Wed, 01 Jan 2020 05:16:38 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47nnBs56Wcz1TWV
	for <blinux-list@redhat.com>; Wed,  1 Jan 2020 05:16:37 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47nnBq1HW8zcbc; Wed,  1 Jan 2020 05:16:35 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47nnBq1F3YzcbW
	for <blinux-list@redhat.com>; Wed,  1 Jan 2020 05:16:35 -0500 (EST)
Date: Wed, 1 Jan 2020 05:16:34 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: espeak-ng packages
In-Reply-To: <alpine.NEB.2.21.2001010502370.24@panix1.panix.com>
Message-ID: <alpine.NEB.2.21.2001010516010.12687@panix1.panix.com>
References: <alpine.NEB.2.21.2001010502370.24@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: q4-NGNNUPpaJlODvElAN2g-1
X-MC-Unique: 81lJpATwOv-2ydyEeVjyow-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 001AGgRM023710
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just found the espeak-ng group on groups.io.


-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

