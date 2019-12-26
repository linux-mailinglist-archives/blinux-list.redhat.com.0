Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id E067912AFCD
	for <lists+blinux-list@lfdr.de>; Fri, 27 Dec 2019 00:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577404736;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=o07P7dWR/D7Jq1JopFy0wV1Mdub44bqmTcmWnZ1b8BM=;
	b=RJ2JnP6L1MVEzmkVyBJ8DwjTULfRD9Fh+7V60W8ysKf+bSZnw94ZQuxw+md9w35LQZAwau
	tF5BiIH63s1xG/rQrV+RCA+va1mfDxWTxzCGn4IOPTIgWjmA8OaxS+KEj9hAFW8irD0vp4
	FxILrSTZPBTBkJ/5hUyBrnXqnB2V4mo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-HQCHY10FMMaURdzq8pYdXQ-1; Thu, 26 Dec 2019 18:58:54 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A79F7800EBF;
	Thu, 26 Dec 2019 23:58:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2A1C8177C;
	Thu, 26 Dec 2019 23:58:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BA6FE4E16B;
	Thu, 26 Dec 2019 23:58:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBQNwHYV022215 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 26 Dec 2019 18:58:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 25ED82166B28; Thu, 26 Dec 2019 23:58:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 214922166B27
	for <blinux-list@redhat.com>; Thu, 26 Dec 2019 23:58:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 793EF185AB76
	for <blinux-list@redhat.com>; Thu, 26 Dec 2019 23:58:14 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
	[209.85.216.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-429-k3E3yOGcNf-3rgE1VVx5Lg-1; Thu, 26 Dec 2019 18:58:12 -0500
Received: by mail-pj1-f52.google.com with SMTP id n59so4134150pjb.1
	for <blinux-list@redhat.com>; Thu, 26 Dec 2019 15:58:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version;
	bh=2jnLj77qc5fKyOniWgLka2IDjuBA0LaTJ80KudeC8Fc=;
	b=KJeJUkiv6zgGhXxYfUDUYxlbRqjnOwPam6GQtvFmQ/uO0ypWZy6Anhu9TBM1zFbLXc
	fYfzOrDQ/nTLJ0N5TxRatPoRJtTVGcIjrbw6lQ5ob9hzQWlMrjfbaZakVa3jssBjiESB
	MdPqK8lNgeU2I1U0ieiRqm7JII8zkG+sKMVPEdphDJkjvwsj9Sfx/ehkIoxYfYZtA1Xf
	8G9i2YhT2ww3OyxRIHFllkAvhVG65P3NvkTEXD+NZ5N8Vr1fjMXPU1DeADT43qI+see/
	38ya94Vk1XuNB/wCxq6/YsNZi5ZhQLx5ioAGDLdJAE1UyG2f2H202AJLwM4D3JLOQ962
	woDw==
X-Gm-Message-State: APjAAAUhoV7QzhdQszNa5xkkFX2JU5XNHikeTK8OhJ3KgAuweP8lltSw
	vGGo0TAv762Yt2s/sqCeLwdx9hBe
X-Google-Smtp-Source: APXvYqwE2ZEibLgttB6g9JcG7N7CzvarMAkwq38srf1klpWCZWwVz4iyJBX05XYU3iFrtrkSrM55JA==
X-Received: by 2002:a17:90b:344f:: with SMTP id
	lj15mr23324333pjb.0.1577404690975; 
	Thu, 26 Dec 2019 15:58:10 -0800 (PST)
Received: from [172.16.250.1] (cpe-104-34-133-201.socal.res.rr.com.
	[104.34.133.201]) by smtp.gmail.com with ESMTPSA id
	i11sm12407691pjg.0.2019.12.26.15.58.10 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Dec 2019 15:58:10 -0800 (PST)
To: "Linux for blind general discussion" <blinux-list@redhat.com>
Subject: I question about how does a blind  person get speech going on a
	Ubentu System.
Date: Thu, 26 Dec 2019 15:58:09 -0800
Message-ID: <CF33CC84-F8ED-4994-B8A4-85478733D19B@gmail.com>
MIME-Version: 1.0
X-MC-Unique: k3E3yOGcNf-3rgE1VVx5Lg-1
X-MC-Unique: HQCHY10FMMaURdzq8pYdXQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBQNwHYV022215
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hello my subject line says it all, I am totally blind. I downloaded a 
copy of Desktop Ubentu 18.3. This distribution has been installed in a 
virtual Machine. After installation the system is running the GUI 
Interface. I would like to use Orca four scream Reading access? How can 
I due this?

Sincerely Maurice Mines.

PS this email has been dictated to my Mac Book pro. Please forgive any 
mistakes?I hope that this is readable?	


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

