Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id A963C150866
	for <lists+blinux-list@lfdr.de>; Mon,  3 Feb 2020 15:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580740255;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=36I+DzQLteMnS/HuBFvlICICi+erJlvB+CEKOOqevK4=;
	b=V5lXPO2lUz/UiE9U4W8elzd9ABeMPvCBCskS7bSxsPTc7HSBpMqJ9+UKE4/S0OjQ49cxUG
	/ol90CD9jwfqS/fwj0K7l9YnwskR2/exGalnnIQ5/XilsnZFuRwqj6jKz24NT9mQzE6Rhy
	Ni95NpRXU2x4CIR7XKqfg9nXEdhK9Mg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-3rCKszzdMd-7gTkQTo0NOA-1; Mon, 03 Feb 2020 09:30:53 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DBAF613E6;
	Mon,  3 Feb 2020 14:30:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D99A784D81;
	Mon,  3 Feb 2020 14:30:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A54F481720;
	Mon,  3 Feb 2020 14:30:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 013EURLa010676 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 3 Feb 2020 09:30:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 22F0A10F1C01; Mon,  3 Feb 2020 14:30:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E8B410F1BFE
	for <blinux-list@redhat.com>; Mon,  3 Feb 2020 14:30:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDC3510197F6
	for <blinux-list@redhat.com>; Mon,  3 Feb 2020 14:30:24 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-66-01TJ0MCPO8KTlXK-1BhJDQ-1; Mon, 03 Feb 2020 09:30:22 -0500
Received: by mail-ot1-f52.google.com with SMTP id d3so13795510otp.4
	for <blinux-list@redhat.com>; Mon, 03 Feb 2020 06:30:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=+GO/jre7DVC6hQFIsjHTAqWktP0VlUg0WuowDeUOE8Q=;
	b=KAjUoPf/TWIHf3nn0Vb9JUf0G9rdCM2ENb47BeEx5Nj3XULErRbMbdsvsYiZ6RDPAp
	UOFm5hGiQBRRBia41AwpjC3B2qWvFaiAxvD6OVYPYB33R04hksQbCbptyMd1JntVFMk/
	Wt8QJrIWIG1cPJePnYfdIu99s7gDTGTAJiIcwb1H1cHiRRO8IjHbmSoKDoAY4p46ylWO
	jjdXOC1xNR8APiqeZoPDmk/8cKgRhtwZO8IatyPOQ7xRP8rKCuOfQbGQrPEBbhUt4/n6
	KpUMgk7TJFvgbzCUTprSZ4JPchA58Ild3k+z0WfqzJYzUNNBA9h/BOhkBkV4uBa8JHLV
	0wbw==
X-Gm-Message-State: APjAAAW87abm9WJ0YkGxkVzWjNq7f0l+6LrkAdVLOQS3akJ4UG148tDG
	MAeyEOVqbxiM0FBaE9Clch9kMAj5
X-Google-Smtp-Source: APXvYqxUv8j/lwAhloKaB3/SjhghFzBdJnwNSJ6+eExoKm6RGxX4MUhgj6KuZvZUlboROk9Om0+5VA==
X-Received: by 2002:a05:6830:606:: with SMTP id
	w6mr7273707oti.323.1580740220861; 
	Mon, 03 Feb 2020 06:30:20 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:98d6:766b:2395:5ebb?
	([2601:3c2:8200:9360:98d6:766b:2395:5ebb])
	by smtp.gmail.com with ESMTPSA id
	e21sm5600562oib.16.2020.02.03.06.30.19 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Feb 2020 06:30:20 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: g podder
Message-Id: <165B2FAD-F35D-482B-BE93-40F0BEC7A24A@gmail.com>
Date: Mon, 3 Feb 2020 08:30:19 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
X-MC-Unique: 01TJ0MCPO8KTlXK-1BhJDQ-1
X-MC-Unique: 3rCKszzdMd-7gTkQTo0NOA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am having trouble getting to menus in g podder.
What is the key combination to make an opml file of all my podcast feeds?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

