Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0427BC444
	for <lists+blinux-list@lfdr.de>; Sat,  7 Oct 2023 04:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696647012;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TSgZKDWKMf9pB0fDd2uIECv/4v6/nGC8pO/FACL4KCs=;
	b=cCNNG54oZUAV7XOwb3ciQaLCjEaJ4C9PQxUxQd1IUqjVbL/0xROOSCiOFmcMizD0aW5riU
	e9yXCRAKQEQPeQHL0IPb2xGpE5JQwW3e3pfKnTPFbaYqpiBoYjDDyDCbaOfo5VSp/HRKq/
	DxW3ibplol/o5OyDetAw7jKrmG0tNbU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-665-qERyjAfyPv6e_Bb_ajl-Ng-1; Fri, 06 Oct 2023 22:50:09 -0400
X-MC-Unique: qERyjAfyPv6e_Bb_ajl-Ng-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 70B4B101A59E;
	Sat,  7 Oct 2023 02:50:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AB8AC40C6EA8;
	Sat,  7 Oct 2023 02:50:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1D2D419465B1;
	Sat,  7 Oct 2023 02:50:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 6 Oct 2023 22:49:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: opensuse tumbleweed
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1823.1696646293.2981450.blinux-list@redhat.com>
In-Reply-To: <mailman.1823.1696646293.2981450.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:vmx9W+qS8j4=;wWIYrb0uYKtdB8K8c/HAN6iHKEX
 0hCxfuF0tdt7El/3cNI8jMElgybDMChzjpyue6lT2T0AwoRxQ92Fzy8CzEH3iaGEz6Rug4PcL
 i3RxtrsSPcL+FmBQcsI6Xtdjw3tpAPgQM0LqGa38UphglgiaQ8a/4mEFmTvbpY8kjkI+HOGAE
 fk/Djh6g+WHPp5vW1AOs1cagtHxuGZuUqYDI/vhQyGfxWFs5KkXU+Tn3/2Z6+38KRAS7yzOfo
 OQqSkJdlFWX9a47zX+fXCG/Alh0G5glO0qg3wG75SDnJX60OBGhl/mzemcqZossZpCWqChLJC
 gFb9Mx4LHUbzTUGRdEt0dhy/Ghyy3u7uv73l5kFwfvpdvCLIPTp1rTSMNSpAOIuSLjkve5Uoh
 XolVhXVSjcB6ffJdrM9fx7o6QPQMdKGkTaIekEJFJCQebWbXZlJTzGPKeTuPFFguIs3OgJ0Nj
 JnIX6DQVzxDWQDl71BiRHEFpG77gzJBIKzbw1J3o2RD4YMS6gHk+Xhp3Tqu1lFP1QaRd2Pzf2
 dbQ4k8WJTBNmqj+a3m9VDM9ygKpnYWglBEqy6n+FkCxRpBTr08TJlLlJoS2Bypku7CJljBiJ9
 PUjiXyq2wxG2PsTUrnhMCvr8GL7tTvK7XPbEHvHALnCUfyOjgrmscxQ5BOtRx2mtSVNCBIzU1
 Mx4k3s9qMh1iao14Wi3NNRIcQdMnW/q/EQ2s1Ez9HUJxVFWv5GWYjqaQYywyHVQXEwyUt6to4
 j6tNRg9ph7C+OTC4KMhxwEscBrVDmN4e6n4DVgoFyQvYWaf3zCISsACrJub61m7ucu6hsA2em
 5DA9357eTsv1GKc39EpQZOl7emXNct+Z2awiOU+FYwju7HDw0tmTlhZl6narw8jrR75gCIQTp
 s4is1i5OdXxzBk67QzRciytHhZ/OlDAzFlbm/5rU39cw4YZ4MyodYuVLBERjeGI5yzzGpvj0i
 WsAHLt3mjhtb5DXUjaWAcUOwqWU=
Message-ID: <mailman.1943.1696647005.2981447.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Your premise assumes that internet access is already connected and
available on the computer where the iso is running and Orca is to be
installed. Unfortunately this is not every computer, especially those
that must connect to wifi or any other type of internet services that
require usernames, passwords, etc. Better would be to leave some things
off the install media so that the all-important screen reader can be
installed, even if it means leaving off an office suite or a browser
and/or email application. Those things could be very easily installed
over the internet once Orca has been started, or for users that don't
need Orca, they can have such other packages installed over the internet
after logging in as needed.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

