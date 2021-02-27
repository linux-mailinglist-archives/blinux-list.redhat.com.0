Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 306D0326F91
	for <lists+blinux-list@lfdr.de>; Sun, 28 Feb 2021 00:11:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614467504;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nd2x7bwqtHMAPnEa7X3S64yWw1y6XxYPlF93nGxGpU4=;
	b=U7J6THpdsfZNuaRflWbpdXqTj1DdPanpx2OcnqA5bKAK7HAOP4NceKc8Olo2QysPWdR1MR
	D6JtCTp3fbWu8I3OU8yXYgfe9akpDARKoYphA5CyxLw11W3Ah6IeLMFW1WaU+gbK6RkfQs
	ta1o5mYMKiP7+bq/BAnQDbDBuX0OqDY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-539-ag6fV3PbNOioPLGySAkCIQ-1; Sat, 27 Feb 2021 18:11:41 -0500
X-MC-Unique: ag6fV3PbNOioPLGySAkCIQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2DC510074B0;
	Sat, 27 Feb 2021 23:11:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B88A260C9A;
	Sat, 27 Feb 2021 23:11:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2FE7718095CB;
	Sat, 27 Feb 2021 23:11:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RNBYvb021360 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 18:11:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B3CEC1005B66; Sat, 27 Feb 2021 23:11:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AEA771111C69
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:11:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5842A1022F09
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:11:31 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-81-A8bkrJGjPBGNtC_6Ug11oA-1; Sat, 27 Feb 2021 18:11:28 -0500
X-MC-Unique: A8bkrJGjPBGNtC_6Ug11oA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id CAF24621C09; Sat, 27 Feb 2021 23:11:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id C775E620230
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 18:11:27 -0500 (EST)
Date: Sat, 27 Feb 2021 18:11:27 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <a26dafa5-6c13-bc1c-4540-b417a5f6ffb5@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2102271808500.2939636@server2.shellworld.net>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<161444979750.8.5402375494901459390.4266338@simplelogin.co>
	<161446448778.8.10629460359382025123.4270314@slmail.me>
	<73c85e2-c3b5-dc82-93ac-8ec1ec176d63@hubert-humphrey.com>
	<Pine.LNX.4.64.2102271750020.2939073@server2.shellworld.net>
	<Pine.LNX.4.64.2102271754020.2939382@server2.shellworld.net>
	<a26dafa5-6c13-bc1c-4540-b417a5f6ffb5@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You  are most welcome.
I have no idea who  you mean by us is of course.
Still, short of changing my body all together, Linux remains a non-starter 
for  me with the default voices provided due to an  auditory processing 
condition.

Karen



On Sat, 27 Feb 2021, Linux for blind general discussion wrote:

> OK Karen, thanks much for your kind offer, will send to you individually. Its 
> really nice to see there is interest in getting this working for us.
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

