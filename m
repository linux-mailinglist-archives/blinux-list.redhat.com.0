Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7EB4B2A6B
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 17:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644597109;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4Cgf0TDIUvRDhOZGJusFudGDFQxjiKhH8bLGS1DdzQM=;
	b=DY3nvEniIHnNPQ6T8Jq/rQo5Sc0WM4GVmniDfAf+xnHhjd4vM/84nF83fnvXyPquJ06Mxp
	dooO2yBEcaUZgwSpc8VrnL6a1kGo/76Lnv/2nc3m6i1J3jX+hkk6O+A0H/+IJZWC4Z3cIO
	ugua3ICTBwb6jv//iyk9/jgc6NUPpqo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-673-DLjJZx2HOtulS1cKAxW1xA-1; Fri, 11 Feb 2022 11:31:41 -0500
X-MC-Unique: DLjJZx2HOtulS1cKAxW1xA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8E26D180FD60;
	Fri, 11 Feb 2022 16:31:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6283D5F91F;
	Fri, 11 Feb 2022 16:31:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0219F4CA93;
	Fri, 11 Feb 2022 16:31:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BGVUXI001143 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 11:31:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BABC640F9D77; Fri, 11 Feb 2022 16:31:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6EE640F9D74
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 16:31:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DD56811E78
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 16:31:30 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-589-XTV2DkGSOqG1yYZfe7lFgg-1; Fri, 11 Feb 2022 11:31:28 -0500
X-MC-Unique: XTV2DkGSOqG1yYZfe7lFgg-1
Received: by mail-ed1-f42.google.com with SMTP id y17so15374973edd.10
	for <Blinux-list@redhat.com>; Fri, 11 Feb 2022 08:31:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:message-id:mime-version;
	bh=bvd23uzbhM9TQHyjGisZ70dD79ZaRrQ1KwZWqUf1at4=;
	b=uhX+eDXnypFcE3ALDKjAG9vM4aNcJ4mVIthSV6uLVmVekQrC4uEHFGiHHsPwsvUt4l
	xZo28wc9CA56JcMVYU+TOP2QQ7HAavrt01i6YO2Yg27yGY3UcNZUF1rZu8VMJTcKOQk8
	nlTgGV2Vt7yf4Uf2WQmwciIwlSA1qvVzooPRlL2NyHaD3CXCeR2s3iUPtwlGafYbYjs0
	NpgPlh2XdlBQJH3RG4YCzTnmS5J2hQMI5dYGwe+iaalmlnMPNa3QukJcCSaYBOUe6oo3
	SFFV3RTP1ocoaV5GzOVn9NPZK1Qd4K5fwq6D6gpR9uIrq2KuMra7ynGlQ6L9ZMGiV6ok
	WbdA==
X-Gm-Message-State: AOAM532lAnCbi86TCOPFob5cSE6oMWTy5jRaoPebc548SJg1ksPxwktQ
	9klGMasBmWEPC2Xis9zXO7DDzPo5Wac=
X-Google-Smtp-Source: ABdhPJykJa2bQBjirUEY3+DsZ6d4kcappG09+CxNYGY1lPVqA3AeqZ29oJYGOkeq010IkVF4Izu4Yg==
X-Received: by 2002:a05:6402:35cf:: with SMTP id
	z15mr2789072edc.13.1644597087046; 
	Fri, 11 Feb 2022 08:31:27 -0800 (PST)
Received: from brandt-slint ([197.184.177.21])
	by smtp.gmail.com with ESMTPSA id
	i14sm8034922ejp.181.2022.02.11.08.31.25 for <Blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Feb 2022 08:31:26 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.local>
Date: Fri, 11 Feb 2022 18:31:15 +0200 (SAST)
To: Blinux-list@redhat.com
Subject: Launching a GUI Web browser and Orca from a console?
Message-ID: <c96e82a-bc5-2072-f11d-f1facb919cf2@brandt-slint.local>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,

I know this is doable, but have never actually done it myself.

I am looking for either a script,  or the info I may need to write my own, 
to launch any of my GUI web browsers with Orca, without actually starting 
up a desktop, Mate, Gnome, etc, or first starting up a WM, weather Fluxbox 
or ratpoison.

If anyone could please point me in a direction, I'd appreciate it.

I actually need this for work, my clients like calling on Google Duo. Why, 
I have no idea!

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

