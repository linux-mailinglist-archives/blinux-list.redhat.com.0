Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id E206218B82E
	for <lists+blinux-list@lfdr.de>; Thu, 19 Mar 2020 14:38:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584625135;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VqJ2TNLB/e3lHrfEtyqteux1RFfBJLjGi1DjunLHCfY=;
	b=Tu/zF2WMcep+9bY3GDIIDJKygSXtYVYVwLHbUP/kZ5YBIStJyxAeOPEx+ibitbYXJ+CfQz
	qSTGAARMPzhgLHRK0r+7GUfDgoOd+rN0GAZUzJdbVLjAobJ6zUk/mxKfcBLOvpDpwK0MEt
	HECnADn8V6TOIfuheHzpifLwM4WDZQY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-gWqpGoNdNwGk5-FgtXUaog-1; Thu, 19 Mar 2020 09:38:52 -0400
X-MC-Unique: gWqpGoNdNwGk5-FgtXUaog-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D0A94477;
	Thu, 19 Mar 2020 13:38:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53FC35C1A3;
	Thu, 19 Mar 2020 13:38:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 759498701E;
	Thu, 19 Mar 2020 13:38:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02JDcZbW007870 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Mar 2020 09:38:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 068D61A91E3; Thu, 19 Mar 2020 13:38:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01F081A91F1
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 13:38:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18185101A55E
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 13:38:33 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-494-BLR6opXkOoinF-7ADWuAIg-1; Thu, 19 Mar 2020 09:38:30 -0400
X-MC-Unique: BLR6opXkOoinF-7ADWuAIg-1
Received: by mail-wr1-f41.google.com with SMTP id v11so3007823wrm.9
	for <Blinux-list@redhat.com>; Thu, 19 Mar 2020 06:38:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=O++BRG0DkQ5YnhuN99X85H2AoyNfjpczzjfU8guDLDc=;
	b=lHgaGUQcL0yQeSYDhUWOIdVTX728KT/RNzFxGduEnIEo7svCSwjh/yNPIZOSFDmsEB
	eQM7xzZFcI93gEX1wcyCvGL6TP/swtwlv7uueiTJO+Na1tkvSgIVYyVkpRMLq7PB+UC1
	uhJ7trO9KroZ3yQACL1BTx/WUtHLB9Do3lf5eENQnKeWudkHW+OGtuW7kw620igEWhhq
	wkNpIsQDSSPo0pe+iqiqBOxTWcBXaKe1aBG9f+7AWk/A9iQtjvdE/EPLuB9Pyqy9Mu7I
	qJ+iJNV5s9lfbBDpyFyDzuBwSWZM8j1rtfARs+wPRgOVU5UprXa8uAGj7MhEN2MW+NL2
	v8Og==
X-Gm-Message-State: ANhLgQ2Wok89nYE9gcvwi77PRZ4ipngi9fl7zCShtEOh9hurjUWxjmUD
	VRpd3uNM6oIK0aJ53kJCBPLkQ1xk
X-Google-Smtp-Source: ADFU+vs9ZHqzqpxrrQkoKfNrhB3bBCw53acmSG8eSksZP1xVBv2/x7t6DCvwNhIj05YTrsIM/00aLw==
X-Received: by 2002:adf:8165:: with SMTP id 92mr4557494wrm.217.1584625109086; 
	Thu, 19 Mar 2020 06:38:29 -0700 (PDT)
Received: from localhost.localdomain (78-157-160-1.silesnet.net.
	[78.157.160.1]) by smtp.gmail.com with ESMTPSA id
	p16sm3148768wmg.22.2020.03.19.06.38.28 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 19 Mar 2020 06:38:28 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: Brltty on login screen under Fedora
Message-ID: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
Date: Thu, 19 Mar 2020 14:38:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

Ubuntu and Debian allows me to read content from login screen with Orca 
and Brltty. Under Fedora, I can access Brltty after authentication is 
done. Can I somehow configure Brltty to get access for all screens?

Thanks,

Pavel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

