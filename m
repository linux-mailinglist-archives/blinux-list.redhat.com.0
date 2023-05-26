Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E89712362
	for <lists+blinux-list@lfdr.de>; Fri, 26 May 2023 11:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685092954;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wMrk7POmmphmFJGgnIarDCBUXAX19HHJUHo+TfVp5t4=;
	b=daQvl+5hoV5eLanSGvrrM7peAAEzPKKxo5CXTIjkX/TdCi1BOoUR4wnuLxcQOK7PDKZMpH
	BqaTLDBPr4RIPDaGDlJjf4xXwJ0P/Vhj7dLeYZ+AOwn4qB31NEAVmVGlxNg0AEt4xvXUCv
	UqIQqZV+Ft0i7uYdDFJ2jHD6l1Yc550=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-433-EYw6JcliPm--p51BeQNVbQ-1; Fri, 26 May 2023 05:22:31 -0400
X-MC-Unique: EYw6JcliPm--p51BeQNVbQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 624503C14112;
	Fri, 26 May 2023 09:22:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3E519492B0A;
	Fri, 26 May 2023 09:22:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 747BF19465B3;
	Fri, 26 May 2023 09:22:22 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 26 May 2023 10:22:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.1
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Keeping Debian relevant question
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.1664.1685092941.233161.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So, had to set up a Debian laptop for someone, and the first question I 
got asked is ....yes but how do I update all the accessible stuf?

So here's my question. What is the most accepted way to do this, is it 
by backports, or switching to testing? It's a Debian 11 system, and by 
default it ships with Gnome 3.38 and thus Orca 3.38.

So, is there a preferred way to keep things up to date then? I've seen 
some people online say use backports. I've seen others say oh, go with 
testing, it hasn't ever let me down, and still others say oh, wait for 
Bookworm, and yet more say oh switch your sources.list to Bookworm


So which is it? I'm not sure what the consensus is.


And related question, Is there an easy way to buil Orca from git? I know 
about Una, so is it on there, if so it'd make my life a lot easier. Una 
is, for those who aren't aware, like paru or yay for Debian. I didn't 
know Debian had an AUR until I stumbled across Una.


Jace
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

