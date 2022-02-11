Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B0B4B279F
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 15:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644588824;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WfDsTrg2sectwsP4yI95eCwOEt2Z0Qr0Y0bqKE08fKw=;
	b=IsChZpC6jvBESfqar8x+XSAB4Y6k1h52Euny0EUVhsvE2AItZ7Uav9OCQQwyXbNxvmicPf
	iJbs61W5M51fdzpQUz+6I4dYPJWCjuz1MChcY7XO6g34N7fK6fEWJgqOYT1gzGFlmXTPiZ
	sY/vaU818vhmeIBgZv2KvHx0WH8jbt8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-118-GqzzVtHrNJK4k1OmpaplVw-1; Fri, 11 Feb 2022 09:13:41 -0500
X-MC-Unique: GqzzVtHrNJK4k1OmpaplVw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02B391932484;
	Fri, 11 Feb 2022 14:13:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D0F0684A0C;
	Fri, 11 Feb 2022 14:13:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0D42E4BB7B;
	Fri, 11 Feb 2022 14:13:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BEAkPu019959 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 09:10:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E182040885BB; Fri, 11 Feb 2022 14:10:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD93A40885B5
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 14:10:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C609E85A5BC
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 14:10:45 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-173-LE2Tvqk6Mf2j956_-4UcBg-1; Fri, 11 Feb 2022 09:10:44 -0500
X-MC-Unique: LE2Tvqk6Mf2j956_-4UcBg-1
Received: by mail-wr1-f45.google.com with SMTP id e3so15563260wra.0
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 06:10:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=fvzjewfKMX3hIWIUUB+6+667VwSnydbp7scGGyWSbpk=;
	b=7TtXvk1AS+mRyzTOQwZxe2pONRv/aAyPr7OPEhu8dz3l2mUP0Va64kdxT/m8WS7cD2
	j0btuswC2Fk+SKpu7JkuxYmemOuaYo3iTS6z+u+DOOHYvYs9a3vw2f9d7fjLlRVkjlSh
	qWRqqGUDFNbDfcH14bc6th/YBzHqgfhmr5Qo4G3BAYgy19gBu1geVKaQRc6fdJ2+H1BT
	X3o+553vOaNLik00qAvqf4YAJqYuxCtSSTvVV4jTOW6oNN5KYTymmJ4F6IJWaJV3GGwE
	+TMfFPCz5Q3bpJSWmr5DW9Tcz7WL0+Gx94AJHI638J1I6DEEUROMBNIM+uctJDUBM/Ng
	BySA==
X-Gm-Message-State: AOAM530eL0qWCIkBodAjL0pCz39d0pw3cwnEhJzcwXjINqSGo6pl4pM2
	62MROqwZ1QsJWt+v76TELmuKROuoES+/ng==
X-Google-Smtp-Source: ABdhPJyqn3QDqyuJgdJQmZfE1CWdjzLK1hwO/n25F2jSCfPoZW3roSo6HMfbcS5Gmi44ZmTnX0H3OA==
X-Received: by 2002:a05:6000:1448:: with SMTP id
	v8mr1474720wrx.43.1644588642549; 
	Fri, 11 Feb 2022 06:10:42 -0800 (PST)
Received: from [192.168.1.221] ([90.251.28.150])
	by smtp.gmail.com with ESMTPSA id
	r17sm4491267wmq.33.2022.02.11.06.10.41 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 11 Feb 2022 06:10:41 -0800 (PST)
To: blinux-list@redhat.com
Subject: Firefox and epubs and email queries
Message-ID: <5e1f6fa7-125c-aa0b-0494-bb81bbe0b310@gmail.com>
Date: Fri, 11 Feb 2022 14:10:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So a few questions

1. I know about epubviewer, but since I'm writing this from a laptop, 
any other good alternatives for epubs?
2. What's the closest I can get to Seamonkey's built in email with Firefox
3. Can I mass download attachments with Gmail's web interface? There 
used to be an addon for Thunderbird but I forgot if it got discontinued 
or not

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

