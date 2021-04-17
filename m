Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 956AB362CD6
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 04:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618625834;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tpUqQKWX21rZlqSrG1wvZe5CcnINopEc8zzLRcYX+Og=;
	b=BOLM0mbzNIPo/ZjMQb40OA2w+PEXzxnZB9lXvjHwjT3Pemj8+WBUC5ya+wKbu6h6Ajkql9
	YOIEy82ul1msQR2Rq7aEO66pVPYqdkIi/X9JRCn4KJw7tGQv9sGaclbfb9pl5cA8G6zxSc
	HO30H/cikw/t19Bfbyq5EBXGn86sOJg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-I1IXY-01MCSXH1wZ6UMotg-1; Fri, 16 Apr 2021 22:17:12 -0400
X-MC-Unique: I1IXY-01MCSXH1wZ6UMotg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01815802575;
	Sat, 17 Apr 2021 02:17:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8788D69FB4;
	Sat, 17 Apr 2021 02:17:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 26FFC1806D0F;
	Sat, 17 Apr 2021 02:17:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H2Gttg029516 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 22:16:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 285631054E45; Sat, 17 Apr 2021 02:16:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 213E61054E3F
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 02:16:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CCECA185A7B5
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 02:16:52 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-31-q7C7ON61OuepUULGh9JJzw-1; Fri, 16 Apr 2021 22:16:49 -0400
X-MC-Unique: q7C7ON61OuepUULGh9JJzw-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.5] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx2.simplelogin.co (Postfix) with ESMTP id 860DB5E487
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 02:11:23 +0000 (UTC)
In-Reply-To: <161862282677.7.2491104836224406595.5939316@simplelogin.co>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
	<2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
	<161861948053.7.16244801545361401537.5938331@simplelogin.co>
	<161862148227.7.18281104954975477453.5938888@slmail.me>
	<161862282677.7.2491104836224406595.5939316@simplelogin.co>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <161862548310.8.16722362767692903606.5940024@slmail.me>
Date: Sat, 17 Apr 2021 02:11:23 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 5940024
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I use LibreOffice on Slint. Its default seems to be .odf but you can save as rtf or txt.
Didn't know you have to save it as .txt or .rtf before pasting it in an email.
It is so strange because when I paste something from LibreOffice into an email, it will read as if everything is just fine. The only way I know that the formatting has been messed up, is unfortunately after it sends to Blinux, then when it is posted and I go to read it, it shows as jumbled format. I guess maybe the email provider does not process that it is odf text until after it sends. So maybe saving the file in Libreoffice as .txt first before pasting it in an email might make a difference. 
Anyways, to Kare and Chime, yes I use Graphical.
I think Graphical may have Thunderbird for an email client. But I havn't set it up yet.
In Windows I would just go direct to the web page of my email provider. Never really found the need to have my emails on a localized email client. So thats what I've done on Slint, just go to the email's web service as I have always done on Windows.
But I wonder if setting up Thunderbird would make a difference?
Totally new to this lol so I have not linked a text editor with an email client. But I could probably try setting up Thunderbird, and then linking that with Pluma as a text editor?
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

