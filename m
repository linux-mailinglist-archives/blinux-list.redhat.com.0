Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 2B407151915
	for <lists+blinux-list@lfdr.de>; Tue,  4 Feb 2020 11:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580813898;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=er2LA7A6owKRB1Jp2SoaFiwA8j2lTpGxIWmwBXY2JKY=;
	b=hyDHzZOFwN9p9YymjfJ7c7L34QsMALQLY3+S3BMH9vyEEd0Pw61SLE7XeXhiETRpalRyny
	bIqqNcAnHcbL2EtGdGVNy5z5Xm6D4IXIFKRqveXaNWl1xywjxl38n7wdhJHlimupbGpFmD
	/yq5a78yURN3yGIcPFzdvRN6fRPiCds=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-245-GVSCerZkM_iPaKXtw76AQw-1; Tue, 04 Feb 2020 05:58:16 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 687971922960;
	Tue,  4 Feb 2020 10:58:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6787119486;
	Tue,  4 Feb 2020 10:58:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E401B18089CD;
	Tue,  4 Feb 2020 10:58:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 014AvwO7013051 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 4 Feb 2020 05:57:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B1C4D2038BAD; Tue,  4 Feb 2020 10:57:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC0B92038BBE
	for <blinux-list@redhat.com>; Tue,  4 Feb 2020 10:57:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9839A1019808
	for <blinux-list@redhat.com>; Tue,  4 Feb 2020 10:57:56 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-150-4qjNw78PMfSQXEMYe_v3Eg-1; Tue, 04 Feb 2020 05:57:54 -0500
Received: by mail-wr1-f47.google.com with SMTP id a6so22372325wrx.12
	for <blinux-list@redhat.com>; Tue, 04 Feb 2020 02:57:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=CtjemEH3iF3EYfLjiQHHBfDhbNjZtUVyn7qOJt+bCpg=;
	b=rpNu/RS3NE9Jx2/Ozr6o4wLkUaNylJjjusIbUPFDQoL0Iaoa44OiVvA+7yBxmJOXmu
	2qHcX3Do5RqAIQUBVVUelZpRnZOZh8KjVCUBcJylqhGdGP3AW2AcA4vqj8L0hEf7lffR
	V7PDJHlH3E7W9ZDr3byMAF/QXwgqJsimr9n+f82jEPTNUSUICEd8IZfv2Z/AvUxLLNXa
	uMft3f0OGBWj/kavpMtmrt36Re705TBZOx26jY5um+1LIgQTCu8NkVBrSMt7neFQ3X3L
	jmp2JAl98oF0UJvTd++9paBRoLxMER6AHjUqeJcqnvE/eTutLSg4/O/dTdCg8qYRWarz
	O3jw==
X-Gm-Message-State: APjAAAXIB0u/3DHKQPSl5aGteJXMIJySPF90JS8lntkaxBTqxronCJ+0
	TiBIMKiQ4qh18NbecU4V94gOYSw/O0nm/wT3zeU/mCYf
X-Google-Smtp-Source: APXvYqwtIh5FGpeiymzztuqVABREpwlWKgV5Pd7HAfkuQcwiyvlkjDmaPGGbN+83xvPPTg6I+Zh7Zz5+9su6dYPTTLk=
X-Received: by 2002:a05:6000:367:: with SMTP id
	f7mr21131770wrf.174.1580813872989; 
	Tue, 04 Feb 2020 02:57:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a5d:5605:0:0:0:0:0 with HTTP;
	Tue, 4 Feb 2020 02:57:52 -0800 (PST)
Date: Tue, 4 Feb 2020 05:57:52 -0500
Message-ID: <CADj8Jxfm9YKA=hho-tQw+q7S7vaJpHX4TjK6oKQh1rcmtabZvw@mail.gmail.com>
Subject: Gpodder
To: blinux-list@redhat.com
X-MC-Unique: 4qjNw78PMfSQXEMYe_v3Eg-1
X-MC-Unique: GVSCerZkM_iPaKXtw76AQw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 014AvwO7013051
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just tried out gpodder on my laptop and if you press alt g you will
jump to the menu bar and land in the gpodder menu. from there you can
move and use the other menus in the menu bar.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

