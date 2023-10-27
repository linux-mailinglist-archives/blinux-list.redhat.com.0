Return-Path: <blinux-list+bncBCS6LGFW6MFRBM5252UQMGQE4XSFNEI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 3882A7D966B
	for <lists+blinux-list@lfdr.de>; Fri, 27 Oct 2023 13:21:25 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-66d159f725csf27267996d6.2
        for <lists+blinux-list@lfdr.de>; Fri, 27 Oct 2023 04:21:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698405684; cv=pass;
        d=google.com; s=arc-20160816;
        b=xAKIFwrcG0UhuQRRUvMuDXKRXmQAdsoh+ofzW/fLUZK6963HbOQ+QE+SXW+zLj3VbA
         zIku3Bm+vZEgdZMKlsO+x9ASH2/0i8Cd848SuwqPHzlHWSdbJteghkuaooOP/fuUpr7F
         3UJm+j7ZoiqhLVUp9J4JN1APAvaTrf3stqFXbL2tBERCvWNbdPkM1SGrjZu9Ao+97XpA
         coF00q7bGkDRwTzoJpZ3bgAR8/pNSAM2Qx30IcZXSguc6sAd8atneOWG6kqpZmK8evbb
         eL1H73M8QXXB6ZvKYLtF/cMxHYqFfsT/S47ac0H6yd9dkSLxyeqN6hKuLuCNMNmV352L
         ZtIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=EWc+QjsZQiZIGqOgrZNYDvN5uYGoxvFLzq7yPSoThIg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=QYUKRGr2EzT5sMzNkTkH/xXvc5ooD/k+lNUV7sPvmfIznz6Nw3PB+8a9KwOw6VNm+i
         Iw02y8h6gSCnzOUjyYbndDu/OT3liXkuDpCjQJd1UUZTfe5iBqpUqfuK8OoQqX6If6ee
         VUivJJjZ29AiTirSfwppprUTqGgTRHVKhW10nHPP8yqhoroPZFL5p+epbygkcSQK0+GM
         alQtZEIHe2/7Zb00iUW0oPD3mgzT9BWlKM5wn5zPMRdzYEinGn9YBtlt0vmwqeyHEqHN
         qkq3fQVg4/ND8QnRyyYOi0adv4KYYp2yhw+FCsuHQZYilmUvu/LtvIKvY38YxaintXo3
         6XNg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.17.22 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698405684; x=1699010484;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EWc+QjsZQiZIGqOgrZNYDvN5uYGoxvFLzq7yPSoThIg=;
        b=J1bxdES3gdpsWgghCeV6Ibt/U2U9+9+//Cbx2TwA5Fnww/Y0IsLBq4Aj6VPwwv2KiY
         SExime+6fe4PNlqA/RMf0i8Bv1Qf34nOsPwOTiTh+nDFxfLPNR227M6BSSm3tYyU2gE2
         xsvF+eHE/XXQmrPe0PwqygwLal2rKxur8ATRpx1rqWai6BArZ4CJUmOs3dnvQUkOmN3H
         ei60O6wDDCVKJ/qdKMAyx/DEJE5dmKQaJ6HrjBY71WjsyRhvvOR5gphF4G9wIF/Yy7Gi
         bl9nUxk5A2dXe939HEQCUnbdKAwNPuSiW/TrVkHz9Jy1G11oegt/TGhs8ckAz0jYDcBT
         vS+Q==
X-Gm-Message-State: AOJu0Yz4RxByuiiUVChwp4iOoMoinf8GdWV2wSyplUWiG0z29WzAjmqK
	IPBbdVD+WMcFWSoPI88KfgkNRQ==
X-Google-Smtp-Source: AGHT+IHvDQMzYWUY9SxSwqat5D62dZez1DH1aS9D/u5soa+udahAcoAd2yPLbFaYxjkrZ3ET+xRrZQ==
X-Received: by 2002:a05:6214:2385:b0:66d:4b22:f54b with SMTP id fw5-20020a056214238500b0066d4b22f54bmr2083988qvb.50.1698405683829;
        Fri, 27 Oct 2023 04:21:23 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:fe85:0:b0:65b:e4f:d22c with SMTP id d5-20020a0cfe85000000b0065b0e4fd22cls1409974qvs.1.-pod-prod-01-us;
 Fri, 27 Oct 2023 04:21:23 -0700 (PDT)
X-Received: by 2002:a05:620a:3954:b0:778:906c:1f07 with SMTP id qs20-20020a05620a395400b00778906c1f07mr2681338qkn.28.1698405683122;
        Fri, 27 Oct 2023 04:21:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698405683; cv=none;
        d=google.com; s=arc-20160816;
        b=MyVa/wStR/oSjvjqE5IvEGFtsOcOVNKq5jmgosnbScQPXs8xwqI8h0Vx+KIl8BpCAB
         SGe6VOsLoK4d6e2gqE7H+7OTpexGibetekQVM8gH5dUefN5TahmufX6N0PO4QSj5sLr/
         HKJGd1M9sVVimqJiEv22R/TeIHyQ71SOQ2m9cGrXSWMYaXskRxWahpPn0O6YF7/zkpcS
         9cW+yjBVnLI56NOuNoouzSpSrSk6w4/Rrv9wGp6DpHZ00Oke2cbBG/j2260HhwENCcPJ
         GqaGwIQ9Res6fyJK2QOJrKsLbcZtZFdshYb/ET4TwOlS9G9oF4V+E0MMfR15ksq9TqFF
         2tIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=wz6tV0y/9ndVIg/MrR5vlW+F7PHJZmXev27NACe7OsI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=QX/BWKO1kL1oIiZl6OOPRH2iwB1/C5sSRr61D37JnEvO2iX6DSQNDX7RDZJ3B3oI0t
         uDR6wwUv94I8s2TCPsE0TMjnz4rWLzsq3kzYlClQZFm+9fBEq2ko1syXc+9NfVQ4jYXI
         ZiEJbvET9BoU593hThAWazNkBRHAIC6ddYEAv+VJx1HAlVmM2rfG6V7HIS+sAEkvolPV
         Na6PDt8UesRyQRzXW5bhB0pxgpDrUl0BQFoYRBiHYDK1kFBifML/sIyQwQMaWExUUVyI
         2JolK4zH17UdCy1UMklXjgwEo1n26hKky6/9nrvvXYTSJq8yox60NECziFMoc8M+j2IX
         XSRg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.17.22 as permitted sender) smtp.mailfrom=guenterk@gmx.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id p2-20020a05620a112200b0076ef65e3814si562286qkk.116.2023.10.27.04.21.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 04:21:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of guenterk@gmx.net designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-457-fcag9TBdNKC8QNItj81s0g-1; Fri,
 27 Oct 2023 07:21:06 -0400
X-MC-Unique: fcag9TBdNKC8QNItj81s0g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3E95D29AA2C9
	for <blinux-list@gapps.redhat.com>; Fri, 27 Oct 2023 11:21:06 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3B4F3502B; Fri, 27 Oct 2023 11:21:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 334A7502A
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 11:21:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0BAF785C061
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 11:21:06 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-528-mDqQ_EvkMVOvY0z_1TCkEg-1; Fri,
 27 Oct 2023 07:20:44 -0400
X-MC-Unique: mDqQ_EvkMVOvY0z_1TCkEg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.160] ([87.143.100.61]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MkHMP-1rK9341cbZ-00kiiY for
 <blinux-list@redhat.com>; Fri, 27 Oct 2023 13:15:39 +0200
Message-ID: <92f1ed04-46ae-4c8f-b62a-a64ea872c617@gmx.net>
Date: Fri, 27 Oct 2023 13:15:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: seeking a sftp site to test a problem?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
From: guenter <GuenterK@gmx.net>
In-Reply-To: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
X-Provags-ID: V03:K1:FzwTSsse0A9PWYE8cKjs+URaWgAc9bOg9tZD3gtdPs272o/wxIB
 SPB4QXYzqyRmoOOnU/bgKyky9jfiQpvUGkw0Ctxe91Yz+J4gRNKPZ1Xl/+VKCyWb7CXIpMr
 KNaCNQMV7SO2vdi4e970Av96MZnUxgPBCLE6jIt4R5cFTNG95pjwgQ0yj2MWVp7+UGAxx8C
 pVgS3fuXM+olbq84aKxjA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:oRoy5vCCy7E=;mabw1gm1CsRUAfCKTVFaQyqksRt
 RIbgm2+0TVAwgG5Gy9beRBy0/yJdRU+irnBb6NSvEBOwE0+6Lni6D46jC2y2Ehszsz/w9UH2Q
 MBJXWxB5C4P5ZNhqF9ELw/XenJZ1M+NwYRqMeiXdzl8O2ZBVehpWNaB1JxydGqTipWw3m03Ky
 NHNpUQaEqkkYwueymcsBo8EdVeycfnZksDfsA4yeFEo6ww9hmiFahcIMNkKH7hRDDwXUf7aGM
 dN9EIdCxyAIEy/vDso1lzBp118zIvgb4bBIo41Cp47DZ6FBJuPxtUAvPV5KnAxX3irHebIAju
 eXReKMV3smweq4ORV/MEESXiS+mPehK/+/wWz8ScB61N2GxYNJNgHWauMqptgbQaii8uTK+hL
 0T13mcUmDgK/6m/QeMh21GZlfTDRrkC1wwd8nKFAaESi6JiemSoEJW5VD5DXXg4C+nHp65GB9
 rN3LWcXx/Qqh1M1i678OTqtpafH3qxKa5ee5gZYAI/8iRGeYMM7j/4efDO1v3EBi3CcJeL5yT
 UWhSrzp7abAk4g6s1wJlnCtR/9oQe06H14Z6unqHYM6myvdtK9Xmqs3gBIHCvpg7wsV9hDtoS
 2Ij5FVWaDX3oagCMLGJo6Xp30auC39iZ/I6myDRULb+AtPX9OPvTV5828nAAqTSqyFFPX2Jdg
 SIGKXVo5ZnQv5u0BTJv8EtOC7ysA5d7NfYddWlHGWsNwaGFQO1QCXJBtN/knIxlOpc0m+Hff8
 bSqbkvBgTz/LEPHT3Y9oUuaUq6hrO2VweeLvmpIUyRR76aMI1PzyLuOTrnNxD2QafgZ9xT6Vu
 Jz
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.net
Content-Language: de-DE
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: guenterk@gmx.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guenterk@gmx.net designates 212.227.17.22 as permitted sender) smtp.mailfrom=guenterk@gmx.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hi Karen!

List of public sftp servers (for testing):
https://www.sftp.net/public-online-sftp-servers

HTH,
   guenter
--
.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

