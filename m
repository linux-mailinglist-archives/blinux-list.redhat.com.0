Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBA94B2D46
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 20:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644606372;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BLjTy31P0FGZWYFXoG8Qk9pGC20wrQqULkEBV/iEfQ8=;
	b=GoAUMFs6unaTvVSNTNhUWT1k8eDvBdj+Saro7+qPkQaV4QEVOTdkKu62qEkvTwFHbO44Pm
	RxzTA1GiSddw3kUv62oMe+r6yPliLhHf6Ktv8SYcdCiwp7A/9VchoBasU7ND8cCb9YPWS4
	MU07qohTAK/3gv7gisD+guBH2wIzcbo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-324-LPCaOy6iNK6T_8lt5_0FzA-1; Fri, 11 Feb 2022 14:06:10 -0500
X-MC-Unique: LPCaOy6iNK6T_8lt5_0FzA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A5A11091DA0;
	Fri, 11 Feb 2022 19:06:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC84560BE5;
	Fri, 11 Feb 2022 19:06:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E35EF1809CB8;
	Fri, 11 Feb 2022 19:06:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BJ5vXs013544 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 14:05:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 04C2A1120ABD; Fri, 11 Feb 2022 19:05:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00908112131B
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 19:05:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2551B3C11C87
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 19:05:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-271-I5ZQoBuDNcWDBLQRg3JtUQ-1; Fri, 11 Feb 2022 14:05:39 -0500
X-MC-Unique: I5ZQoBuDNcWDBLQRg3JtUQ-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JwNNy4Q8yz152n
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 14:05:38 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4JwNNy4sDDz1QXL; Fri, 11 Feb 2022 14:05:38 -0500 (EST)
Date: Fri, 11 Feb 2022 14:05:38 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Launching a GUI Web browser and Orca from a console?
Message-ID: <YgazgghwpYflanwE@panix.com>
References: <c96e82a-bc5-2072-f11d-f1facb919cf2@brandt-slint.local>
MIME-Version: 1.0
In-Reply-To: <c96e82a-bc5-2072-f11d-f1facb919cf2@brandt-slint.local>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'd like to be able to do this too. I've never used a GUI desktop.
The only reason I'd even consider a GUI interface is to web browse sites that are inimical to lynx, links, and w3m.

On Fri, Feb 11, 2022 at 06:31:15PM +0200, Linux for blind general discussion wrote:
> Hi all,
> 
> I know this is doable, but have never actually done it myself.
> 
> I am looking for either a script,  or the info I may need to write my own,
> to launch any of my GUI web browsers with Orca, without actually starting up
> a desktop, Mate, Gnome, etc, or first starting up a WM, weather Fluxbox or
> ratpoison.
> 
> If anyone could please point me in a direction, I'd appreciate it.
> 
> I actually need this for work, my clients like calling on Google Duo. Why, I
> have no idea!
> 
> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent from the Slint console using Alpine
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt
The difference between truth and falsehood is that truth remains the same no matter which political party holds the majority.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

