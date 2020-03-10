Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5266517F56B
	for <lists+blinux-list@lfdr.de>; Tue, 10 Mar 2020 11:53:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583837579;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1WbfVORO81VXzCFBTAyjfB45sGczSYgD2xRDBgcqKT8=;
	b=O7J7r3DbQuJ7xJ7+ieQLz9mAvlTAttzZMIxQz3U8S4Gi3iLpBQZusiomG2ZS1vXhg0s+v/
	hURk2K6hFiJiQ1XzMShCQ4Jx5AGoEkFyuuRlrRIEl/m3vR4aQCzB/ExWcfNMCbOZ6fCVv5
	ZQivoCqx3mA88a/yjonbVopJpqXDrx8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-3zfmnlDcNtW2vOZkk5GktA-1; Tue, 10 Mar 2020 06:52:57 -0400
X-MC-Unique: 3zfmnlDcNtW2vOZkk5GktA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 57395800EBD;
	Tue, 10 Mar 2020 10:52:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D85768F35C;
	Tue, 10 Mar 2020 10:52:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 40F1C18089C8;
	Tue, 10 Mar 2020 10:52:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02AAqbYX022231 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Mar 2020 06:52:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D400511701C3; Tue, 10 Mar 2020 10:52:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CECD410E51B1
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 10:52:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 94053800307
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 10:52:35 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-441-Ksok4uujPtOG9TjSZdL2Yw-1; Tue, 10 Mar 2020 06:52:33 -0400
X-MC-Unique: Ksok4uujPtOG9TjSZdL2Yw-1
Received: by mail-oi1-f173.google.com with SMTP id a22so13286416oid.13
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 03:52:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=e+sA9HpX8sUsyas9X7NS38TNMEm18ruwYK6wc8IM98o=;
	b=pgttGDg8DVNsHKYlU8ih8A/TxnkSbZ00z+btX/qOHb+g6TanUI8/NEPNH/cohHT6Im
	OJDPssELPDr9REvRd9WzoUa7VEpvvpmZDOWt2PzkKm3LRBSmLTM5AX4bnUdx/r5M/br+
	oeiazuZogrJ0SmQONUjSonDB7hlj5rla0bYLdthm1FC2CIwu5uN2Ql/4ecI8pN3WR4yd
	M5Ir8BTxH/Q4dhyxKRsBDtYdjbltx6zHsfFcNdB+MCpMNQJA9c3sDYMttHv3w81bgAJW
	YXTvPjGm5/A/r7KsiKZfVOBpWk7h414XvlsSyt1M/Q8rKuEu/F1GHco+P+gJf3tvfu6K
	iuJA==
X-Gm-Message-State: ANhLgQ1skD4jl1l9g+E3rSbBSf558T9YkuUb3D9l3RslyZwZPP48lIpE
	wQxN2UIZk3mM5Z0T9koH/q9QIjuJ
X-Google-Smtp-Source: ADFU+vuHaa1Z//UYbrfK3CP149miTpI9HnYADG3vi2EpeXEHtKUyGaK3EVTf4lyi7J5A0zGRK9Zm+w==
X-Received: by 2002:aca:ea0a:: with SMTP id i10mr673748oih.12.1583837552052;
	Tue, 10 Mar 2020 03:52:32 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:2d12:adab:50bf:feca?
	([2601:3c2:8200:9360:2d12:adab:50bf:feca])
	by smtp.gmail.com with ESMTPSA id
	u205sm4149559oia.37.2020.03.10.03.52.30 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Mar 2020 03:52:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: orca master
Date: Tue, 10 Mar 2020 05:52:29 -0500
References: <2856df1a-69cb-0a03-d4f0-bf3051b2ab20@gmail.com>
	<ccc1f11e-f015-f66f-c897-e6bbf9c0afc3@crosslink.net>
	<CAPo=n-9HbU7zg09v=fZKLkaq0Tu3M+CQi4FQgKoLN+feKJeiyg@mail.gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <CAPo=n-9HbU7zg09v=fZKLkaq0Tu3M+CQi4FQgKoLN+feKJeiyg@mail.gmail.com>
Message-Id: <2C30B027-FF78-4791-A129-7BA6865373CB@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02AAqbYX022231
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

I know what orca is, the screen-reading program.
What is orca master

> On Mar 10, 2020, at 12:32 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> The best PDF experiance I know about currently is if you run Orca master
> with the latest snapshot of chromium or Chrome. The builtin PDF reader of
> Chromium is very nice, it places every page under a different landmark so
> you can navigate between them with m and shift+m. It even support a few PDF
> tags by converting them to their HTML equivalents, headings for example.
> 
> Regards,
> 
> Rynhardt
> 
> On Tue, 10 Mar 2020, 04:07 Linux for blind general discussion, <
> blinux-list@redhat.com> wrote:
> 
>> Ubuntu Mate Desktop seems to have Atril Document Viewer.  If you press
>> F7 to turn on caret browsing it seems to be usable with some PDF files.
>> I have not used it extensively.  You can also press control-a to select
>> the entire document and paste it into an Editor.
>> 
>> 
>> 
>> On 3/9/2020 5:36 PM, Linux for blind general discussion wrote:
>>> Hello,
>>> 
>>> 
>>> is there any accessible pdf viewer on Linux which can be used wiht
>>> Orca screen reader?
>>> 
>>> 
>>> Evince seems not to belong to this category.
>>> 
>>> 
>>> Thank you in advance!
>>> 
>>> Vladyslav
>>> 
>>> 
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>> 
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

